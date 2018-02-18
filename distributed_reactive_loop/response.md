OK, first draft for responses. Probably need to include that into the discussion at the end.

> How are printers registered on the scheduler ? Is it possible to add some dynamically ? The services discovery is often one difficulty off distributed systems, then i think it should be interesting to explain how it has been done here (could be a limit of this system too, I don't know).

Please note we have no such "scheduler" role in the design (in the context, it could mean different things).

When printers come online (after power up or reconnection), they registered themselves dynamically on the supervisor. In the current implementation, the supervisor creates a websocket handler for each printer, which enables full duplex communication. Service discovery is not the primary purpose of the reactive loop and could be delegated to a dedicated service if need be.

> How to deals with a printer status change between the reception of a state from the worker and the send of a command ? Is the command rejected ? How such rejection is handle by the scheduler ? Request through the network are not transactional and that's another pain point of distributed systems.

Basically yes, the printer will reject any command which does not match its internal state, because its primary purpose is to preserve local consistency within the printer context. The supervisor does not care about a rejection. If a command is lost, next time both nodes perform a loop run, two things happen in succession:
- first, if need be, supervisor reconciles its internal state with the latest printer status
- then supervisor tries to send the command fit for the latest state

This reactive pattern on the supervisor side of a loop run is actually part of the resiliency scheme of the framework. A good reactive loop design implies some kind of command-query separation/functional thinking (state updates happen independently of commands, and commands should be idempotent? <-- not sure for the last one).

This enforced separation is also true of the current printer FSM design. States can be classified in two ways:
- either an "active" state (for example, printing), from which the printer will transition automatically when need be (and during which it does not accept commands).
- or a "blocking" state (for example, "waiting for retrieval"), from which the printer can not transition until the right command is received.

In other words, in the current design, the supervisor only sends a command when the printer is in a blocking state. There is no nominal case where an "active" state change happens while the supervisor sends a command related to the previous state. It could still happen for example if the printer would go into error state (then, the reaction pattern above applies - also see the description for the error case).

This also impacts the design of the item state on the supervisor/database side, which should represent just what happened with "micro-states". A good example of this is the "waiting for retrieval" state.
- when the supervisor receives the update for this state, it flags the item as being ready for retrieval. In this case, the supervisor can do nothing more and does not send any command to the printer.
- once an operator has effectively notified the supervisor that the item is retrieved, the item state is flagged as done.
- next time the supervisor and the printer perform a loop run (which happens immediately after the above action if they are connected), the combination of "item done"+"waiting for retrieval" status triggers the supervisor to send the command "done", which enables the transition back to the ready state (and then another loop happens to look for the next job).

The reactive loop tries to embody a functional way of thinking, where state updates happen independently of commands. And commands only depends on few consistent inputs.

In other words, the worker strives for local consistency with the printer, the supervisor for availability (with some inconsistent data from time to time), and the system as a whole should be eventually consistent when the reactive loop runs on a regular basis.

> The images are good, however on all of them there is always only one worker involved. The scheduler is supposed to call all all of them (with a kind of round robin I guess), and it can be valuable to just have a simple sentence to explain it.

First, the term scheduler can be misleading in the context and we do not use it. "Scheduling" jobs is another concern of the system, not explained here (for example, a print order could put some constraints on which printer to use, for geographic/economic reasons). A job is simply said to be scheduled when it is linked to a printer in the database.

We could said that figures focus on the supervisor-worker relationship, because this is where the reactive loop happens, independently of the number of workers connected. When the supervisor receives a request for connection from a printer, it creates a handler (because the current implementation uses websocket). A supervisor could handle as many workers as it can support websocket connections.

The supervisor never needs to call all printers. When the supervisor performs an action (on operator or printer behalf), it is always targeted at one or a subset of printers. It can look up the handlers of the currently connected printers and trigger a loop run if need be. If the printer is not connected, the item state in database is still up to date anyway and any action will happen the next time the printer connects (another example for the command-query separation).

> It seems that there is only one scheduler. Is that right ? If it is the case, it can be a limit to the system resilience. If it is not right, how synchronization between the instance is done ?

In the same sense as a REST server, supervisor design calls for "stateless" actions. A handler only stores the state of the connection, no data about the printer status or job. Whenever a loop run implies some state, the supervisor will look up the data in the database. As for any web system, state synchronization ultimately relies on the database. So, if supervisors are stateless, they could easily be duplicated as a service  and moved behind a load balancer to scale up.
