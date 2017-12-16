The Distributed Reactive Loop: Handling Resiliency with a Simple Thought Framework
=========

TODO
- discussion
- conclusion
- normalize vocabulary: state/status, job/printer/worker, server/supervisor
- proofread!

Once upon a time, we were tasked with designing a distributed system for 3D printers across the internet - something like a pool of workers for processing jobs in parallel. A the time we knew little of the customaries of 3D printing: how it works, how it fails, what kind of communication to expect. After the initial probe & discovery stage, it becames obvious we had to design a distributed system in a not so common way. Because 3D printers are dealing with a physical process, taking some time to complete and requiring manual operation, we went back to basics and focused on two properties: keeping things consistent locally and making the overall system resilient in face of inconsistency. This is the story of how we designed our system to handle such properties.

Challenges of 3D Printing - in a Distributed Context
----------------------------------------------------

From a faraway point of view, distributed 3D printing is not different from the job parallelization we often stumble upon in the cloud. Given one model and some quantities, create some jobs and dispatch them on available workers.

![](figures/3d_printing_cloud.png)

But when tackling the customaries of 3D printing, we quickly had to face the following evidence.

- 3D jobs take a long time, very long in term of computer time: from a few minutes for the smallest items to well over a day for big ones, with many regular objects taking at least a few hours.
- 3D printers are still a new thing, fragile machineries, with failures happening from time to time.
- Job failures can and will happen, and they can be costly: you lose hours of printer time, and you have to clean up the mess before taking a new job.
- Even after a successful job, a human operator is required to extract the item before the next job can be taken.

This is different from what we often expect when it comes to job processing in distributed context: fast jobs, cheap processing, "cost-free" mistake, automatic retry, and a pool of standard, virtual workers, running without manual intervention.

We had to design a system for long-running jobs, which would closely mirror what was going on, so that no precious processing time is lost because of inaccurate reporting and nothing harmful could happen. This means, for example:

- ensuring we had -eventually- an accurate status of whether the job has succeeded or not;
- ensuring the printer would not take another job while the previous item was still in its enclosure (obviously, a full-speed encounter between the printer head and a previous piece of hard plastic could result in some catastrophic damage).

How (not) to Think and Design a Distributed System
--------------------------------------------------

When thinking about distributed systems, developers love to throw together a bunch of servers, load balancers, job queues, storage nodes to build a highly-available, highly-resilient, highly-scalable system. With modern days conception, there are bonus points for splitting the tasks across multiple micro-services, each micro-service customarily holding a single responsibility, easier to implement, easier to deploy.

But given the above reasons, it was obvious that our main challenge would not be availability or scalability, but rather resiliency to fault in the system: job failure, but also communication failure, could happen any time, for example when a connection would be lost and a printer could not receive or send messages to the system.

There have been many warnings over the last years, even "horror stories", that micro-services systems are not *easier* to design and understand, because you have to handle the cost of communication. From a graph point of view, you have to think about the *n* nodes of your system, but also about the *m* ways nodes communicate between them (with *m* somewhere between *n-1* and *n\*(n-1)/2*). In other words, the more you add micro-services, the more you multiply how they can interact and fail with each other.

![](figures/nodes_connections.png)

Since we were wandering into unknown territories, the most sensible thing to do was to simplify the system, make it easier to reason about. To this end, we removed intermediaries (such as message queues), starting with just the core nodes required to perform the task: a server/supervisor and some workers.

A Thought Framework for Resiliency: the Distributed Reactive Loop
-----------------------------------------------------------------

We consider two primary nodes in our system: a supervisor in charge of dispatching and monitoring jobs overall, and a worker in charge of monitoring a printer. Both nodes communicate directly through a full-duplex channel. By removing intermediaries, we also take care of limiting data redundancy between nodes, so that state is easier to reconcile in case of inconsistencies.

![](figures/architecture_overview.png)

Each node has a purpose which it follows, regardless of the system status. The supervisor handles requests from customers and updates from workers. It must be available at all time, even if its responses are outdated. On the contrary, the worker targets job consistency. It monitors and mirrors precisely the state of the printer, and continue to do so even in case of network failure. For the worker, there is no need or no rush to send updates about the job, as long as it keeps things consistent.

We have simplified the structure and stated the purpose of each node. Now we must explain how both nodes communicate with each other. The communication protocol defines how progress can happen overall the system. The core tenet of our protocol is that each time both nodes are connected and have an opportunity for communication, they would make a roundtrip, exchanging data and commands. The roundtrip is triggered by some events: on the supervisor side, this is a human interaction, such as a customer order or an operator action; on the worker side, this can be a transition in the worker automata, or simply the worker going online.

We called this protocol a **reactive loop** because it always starts with a request for the current worker state (considered locally consistent), so that the supervisor properly reacts to it. This small exchange is enough to let the supervisor refresh its internal state, and to send new commands to the worker for the next thing to do.

![](figures/reactive_loop.png)

Together, those design decisions make it easier to reason about the system by having a simple **thought framework**, with basically distributed decisions being made in one place - the supervisor. It also imposed a clear separation of concerns between worker and supervisor, with the worker focusing on keeping its own state consistent (with regards to job processing in the printer), while the supervisor focused on worker commands and state reconciliation whenever it could communicate with workers. Overall, it makes it easier to reason about failure and recovery modes.

Printer Automata
----------------

Before illustrating the reactive loop with use cases, we should describe how the worker represents the printer state. The printer is easily modelled as a finite-state machine. Each state indicates what the printer is currently doing, which action to take or monitor, and which messages sent by the supervisor are valid. The figure below shows a simplified version of the FSM: there are three normal states, which models the regular process; one special state catches errors to allow the worker to recover.

![](figures/full_fsm.png)

After the initial startup, the worker goes by default to the **ready state**. This is the normal state to wait for print jobs from the server. When a print message is received, the worker goes into an **printing state**, monitoring the physical printer until it has finished. It sends progress update to the supervisor but does not accept any message. Once the job is done, the printer is not readily available as the item must be retrieved from the printer box. Instead, the worker transitions into a **waiting for retrieval** state. It simply waits for a signal that the human operator has retrieved the item, so that it can finally go back to the **ready state** and accept a new job.

Whenever the worker detects an issue with the printer, it goes into the **error state**, waiting for recovery. Indeed, when the printer fails, the item is most often in an unknown condition. An operator must look into the box, extract and discard the item, and clean up the printer. Then he can signal that the recovery is done, which resets the job and moves the printer to the **ready state**. Notice also there is startup path directly to the error state: if ones pulls the plug while printing (for an emergency stop), the worker will go and stay in error state when coming back online.

This automata represents the internal workings of the printer. But from the point of view of the supervisor, the worker can also be in an **offline state**, meaning communication is impossible. The worker may simply be turned off, or it may have lost the connection. The loss of server connection does not prevent the printer from performing some task. For example it might continue to print an item. This case has implications about what happens when a printer is offline but also when it comes back online.


The Reactive Loop, Illustrated
------------------------------

Thinking with the reactive loop is as simple as imagining a use case and playing it through the loop. The below examples will illustrate most of what can happen in the system.

### Prerequisite: Print Job Creation

To set things into motion, a customer should of course issue a print order. The server takes care of creating and dispatching print jobs on a subset of 3D printers to fulfill the print order. Each print job is first registered as to do, regardless of the printer state. This way, the job becomes part of the printer queue. It will be consumed when the printer is ready, depending on one of the following use case.

### Nominal Case: Start a Job Immediately

When a job request is created on the server, the server checks whether the printer is connected and sends a request for state. The printer answers "ready to print" so the supervisor looks up one job to do in the current printer queue and sends it to the printer.

![](figures/nominal_path.png)

### Postponing a Job

When the server requests the state, the printer might be processing another job. In this case, the roundtrip stops immediately with a no-op. Since the job is already in queue, it will be processed later.

![](figures/postponing.png)

### Consuming a Job Queue

Because a manual operation is required to retrieve the item from the box, the printer can not automatically takes another job once finished printing. Instead it follows a two-step process through the supervisor to ensure that the current item status is finally done before taking another job.

Once finished printing, the printer goes into the waiting state. When receiving this state, the supervisor updates the job status in its database, and notifies the operator that the item is ready. Then the operator can signal the supervisor that the item has been effectively retrieved, marking the job as done in the database. This happens whether or not the printer is online. When the next roundtrip happens, and the printer is still waiting for retrieval, the supervisor checks the job status and signals it has been effectively retrieved. The printer can finally go back to the ready state, where another roundtrip triggers the next job in queue.

![](figures/consuming_queue.png)

### Starting after Wakeup/Reconnection

When the printer comes back online in the ready state, how does it get deffered jobs? A simple roundtrip to the supervisor indicates the printer is ready and can trigger a job command if one is available in the queue.

![](figures/deferred_start.png)

### State Reconciliation

Update messages may be lost when the connection is down. But an interrupted connection should not alter the printing process. For example, the printer might finish its job and go to the "waiting retrieval" state. Meanwhile the job is still marked in progress in the supervisor. Next steps can not happen until state has been reconciled. After reconnection, a status exchange is enough so that the supervisor updates the job state. Only then can the process proceed normally with the retrieval stage before going back to ready.

![](figures/reconciliation.png)

### Error Detection and Recovery

Failure can happen anytime during a printing process: the model might be faulty, the mechanism can derail, or the printer could simply be powered off because someone pulls the plug. In most case, it is impossible to resume a failed job, because of the physical properties of the material. When this happens, the worker simply goes into an error state. This can happen whether the printer is online or offline with the supervisor. Once the printer is online again, a roundtrip is enough for the supervisor to detect the error state and notify the job as failed.

![](figures/error_notification.png)

The process is then similar to the "waiting retrieval" state. The operator cleans up the mess, checks the printer is operational, then signals the job as "recovering" for the supervisor. At the next roundtrip, when the printer sends the error state and the supervisor sees the job as recovering, it can send the recover signal to the printer. This signal puts the printer back in ready state, which can then start over.

![](figures/error_recovery.png)

Discussion: Some Properties of the Reactive Loop
------------------------------------------------

*Limited redundancy/reduced inconsistencies vs Progress/Liveliness*
limit the redundancy of data between nodes, so that state would be easier to reconcile in case of inconsistencies.

some times both system can work independently (i.e. disconnected), for example when printing is going on. But overall both systems need to be online together to make progress.

--> Comparison with an independant queue system

- can use well-tested, reliable/available system (esp. SAAS): this means other systems relies on it for synchronization. Depending on the design, the system could make progress without supervisor and worker being simultaneously online.
- more systems to synchronize, more state to reason about: supervisor state and job queue. A job should not be started on another printer if we are not sure it has been cancelled on the first one.

*note about the extensibility of the system/thought framework*

- do we need a new state in worker?
- which message need to be exchanged? status update, command
- how the supervisor would react to this new state given prior knowledge (nominal case, fault detection, fault recovery) : state update/reconciliation, next command

Conclusion
----------

- thought framework: simplify the system, make it easy to reason about, esp. with use case
- digression about the CAP theorem?

[Icons by Icons8](https://icons8.com)
