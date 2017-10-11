Resiliency without a Name: the Distributed Reactive Loop
========================================================

Or *how I stopped worrying about micro-services and learned to love distributed systems.*


Once upon a time, a small team of developers in the wild wild web were tasked with designing a pooling system for 3D printers over the internet - basically, it would work like a classic distributed system dispatching print jobs across workers. The task was "interesting", as the team was mostly ignorant about the challenges/customaries of 3D printing, and challenging, as the budget was tight - what we really ought to build was a proof of concept, able to handle the customaries of 3D printers.

Challenges of 3D printing (in a distributed context)
----------------------------------------------------

![](figures/3d_printing_cloud.png)

- jobs take a long time, very long in term of nowadays computer time: from a few minutes for the smallest object to well over a day for big jobs, with many objects taking at least a few hours.
- printers are still new things, a bit fragile, with failures happening from time to time.
- so job failures might happen but can be costly: you lost hours of machine time, and you have to clean up the mess before taking a new job.
- Even after each job, a human operator needs to extract the piece, check it and clean up the printer before the next task.

So we are not exactly in the realm of pure software jobs, which takes a few minutes, can fail quickly, cleaned up and redispatched on another worker - nor in the realm of industrial-ready, fault-resilient machines, which would handles most maintenance tasks by themselves and even be able to clean up a failed job.

How (not) to design and think of a distributed system
-----------------------------------------------------

Every now and then, when thinking about distributed systems, engineers go all the rage with plenty of services and love to throw together a bunch of servers, load balancers, job queues, storage nodes to build a highly-available, highly-resilient, highly-scalable systems. With modern days conception, there are bonus points for using micro-services, each micro-service "customarily" holding a single responsibility, easier to understand, easier to deploy, easier to maintain.

However, there have been many warnings over the last years, even "horror stories", that micro-services systems are not *easier* to design and understand. Especially as for each micro-service, you have to think of the ways it will communicate with other services, but also the ways such communication would fail.

![](figures/nodes_connections.png)

In a graph vision, this means you have to think about the n nodes of your system, but also about the m ways nodes communicate between them (with m somewhere between n-1 and n\*(n-1)/2). "In other words, the more you add micro-services, the more you multiply how they interact and fail with each other."

For the reasons given above, it was obvious from the start that our main challenge would not be system availability or scalability, but rather the resiliency to fault in the system: job failure, but also communication failure, for example when a connection would be lost and a printer could not receive or send messages to the pooling system. Having to deal with such a constraint was new to us.

"more details about the resiliency challenge"
We had to design fully autonomous worker, able to perform their job of monitoring the printer while processing an item, even with a long loss of connection/communication. And we had to design a supervisor, which could fully retrieve and reconciliate the state when communication would be back with the worker.

A thought framework for our case: the distributed reactive loop
---------------------------------------------------------------

What do you do when you are wandering into unknown territories, with some budget constraints so that you have limited time to think about the system. You simplify things and use your imagination to make it easier to reason about your system.

![](figures/architecture_overview.png)

In our case this imply limiting the number of intermediaries between our two main resources: the supervisor node, which would sends commands and receive updates, and the worker nodes, which would receives commands and sends updates. Simply, we make it the simplest possible by having a direct communication channel (without, for example, message queues intermediaries).

Then, we design a reactive loop where each time the two nodes (the supervisor and the printer worker) would communicate, they would exchange a bit of information so that they would refresh their respective state if need be, and send (or receive) appropriate commands and updates. --- The core tenet of our framework is that each time both nodes would communicate, they would make a round-trip loop exchanging commands and information, so that the supervisor could properly react to the state of the worker, considered locally consistent.

![](figures/reactive_loop.png)

Together, those design decisions make it easier to reason about the system by having a simple **thought framework**, with basically distributed decisions being made in one place - the supervisor. It also imposed a clear separation of concerns between worker and supervisor, with the worker focusing on keeping its own state consistent (with regards to job processing in the printer), while the supervisor focused on worker commands and state reconciliation whenever it could communicate with workers. Overall, it makes it easier to reason about failure and recovery modes.

The reactive loop, illustrated
------------------------------

What does a reactive loop looks like in our case. Take a look with most case.

- Nominal case: send job / start job
- Delayed/deferred job
- starting a deffered job
- state reconciliation
- error detection, error recovery

More principles/properties of the reactive loop?
------------------------------------------------

"limit the redundancy of data between nodes, so that state would be easier to reconcile in case of inconsistencies."

**note about the extensibility of the system/thought framework**
- do we need a new state in worker?
- which message need to be exchanged? status update, command
- how the supervisor would react to this new state given prior knowledge (nominal case, fault detection, fault recovery) : state update/reconciliation, next command

digression about the CAP theorem
--------------------------------

Conclusion
----------

[Icons by Icons8](https://icons8.com)
