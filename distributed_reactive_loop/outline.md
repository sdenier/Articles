Resiliency without a Name: the Distributed Reactive Loop
========================================================

This is both

- a technical story about a simple solution to the resiliency problem in distributed systems (how to recover when something bad happens - CAP theorem)
- an educational story about strong constraints leading to simple solutions



Context
-------

When you first elaborate on a distributed system which should pilot multiple processes across a network, be resilient to faults. You readily start to fantasize about all the fun stuff you have to set up: workers, queues, databases, supervisor/monitor...

Cost of setting up such an architecture when the first thing you want is a proof of concept.

Thinking with constraints can lead to simplification and invention: how to achieve resiliency between nodes without a complex architecture. Let each node not care about other nodes, store the minimal amount of state necessary (and avoid duplication), and make nodes react to events. Basically, given my own state A, when event X happens, what should I do?

Without sophisticated queues or synchronized state, your best bet at selecting the right choice is to make a round-trip between two nodes. If you can make it, then you can make a fair guess about the next system state and proceed. If not, then just wait for the next opportunity.

*Hence, resiliency without a name comes when you can design a lightweight (with simple "reactive" rules) feedback loop between distributed nodes.*

YMMV

Plan
----

- the problem: what are the constraints? How does it affect the design of the nodes? For the system as a whole?
- solution: how does each node works?
- solution: how does the global loop work?
- solution recap: benefits? compromises? weaknesses? (some synchronicity, but no stale messages)
- conclusion: the timing/project constraint - at the time, given the nature of the problem and our lack of understanding (what was the real/underhood problems?), we did not want to choose existing off-the-shelf components and setup a fully designed infrastructure. Instead, the choice was to design a custom architecture, *one that was simple to understand and extend as we incrementally develop the next features and got a better understanding of the governing rules of our system. With time, we come to appreciate the simplicity of the loop, as we always know where to look for decisions to be made, and how communication would happen between the nodes*. This made the distributed aspect simple to understand and allows us to focus on the details of each node working independantly.



Intro?
------

When designing a distributed system, ideas come quick about using micro-services, job queues, and isolated nodes, in order to achieve the desired consistency, availability, and resiliency. However we do not always have the luxury nor the time to think about big systems and their constraints. The complexity of setting up and monitoring such systems can be daunting for small projects, especially proof-of-concept. Then you have to figure out how to fit your project constraints into the system Developping and debugging a system built of many isolated components, when you do not have time to set up

There are many factors which can make the development and the debugging of a distributed systems daunting, especially in the early stages:

- you may not have a clear idea of your project constraints, which in tunrs lead to over-engineer a solution or trying to fit your problem into a solution (when you have a hammer in the head, everything looks like a nail, the say).
- when you multiply the systems, you also multiply the way thoses systems communicate, and how they can fail together. Just setting up and retrieving the right level of information must be thought of in advance. Also a distributed system failing because unforeseen constraints can lead to a bloated system architecture, when trying to circumvent the limitation.
- how do you incrementally augment such a system. Especially, how do you make possible to always think in the same mental framework, so that it is easy to think of 1) adding new behavior, and 2) assess the impact of new behaviors on other preexisting behaviors.

All such problems are easily illustrated by micro-services architectures. When everything works together, it does wonder, but it takes time and experience to find the right decoupling of systems.

When confronted with such problems and given limited time/budget constraints, we were quick to think of alternative solutions. We especially focus on limiting the number of different nodes so that it would be easier to set up and reason about. In the same vein, we limit the redundancy of data between nodes, so that state would be easier to reconcile in case of inconsistencies.

Our main design law was to think of the system as kind of distributed, "reactive" feedback loop, where events and intermitent round-trip betwwen nodes would be enough to reconcile state from time to time and let the system advance (without stale).


Overall architecture and constraints
--------------------

Master server - restful, requests and orders
Slave machine - automata
full-duplex communication?

What was our system designed for? Simply put, on one side we had a master server, whose main role was to receive orders from clients, and send such orders as jobs to a an array of slave machines. Slave machines would process such jobs one at a time. Given jobs could take as little as a few minutes and as long as a full day, it was paramount that slave machines remain fully autonomous and continue processing their job even when the network link to master was lost. Master and slaves would profit from the next connection window to make a round-trip and let the overall system progress.


Case-by-case scenario
---------------------

- Nominal case: send job / start jog
- Delayed/deferred job
- starting a deffered job
- state reconciliation
- error detection, error recovery


Discussion
----------

Any distributed system practictioneer knows about the CAP theorem (Consistency-Availability-Partition: you can not design a distributed system which satisfy all threes property - being always consistent, available, and resilient to network partition - you have to choose at most two of those properties). And some have argued that distributed systems operating over internet are by construction network partition, so you really have no choice but to build a system which is either P and C, or P and A, but not C and A.

While the law applies to the distributed system as a whole, I like to think that those properties can vary when we examine each node independently. Typically, for our master node availability was the primary property, since it should always be able to accept orders and respond to client requests, at the expense of consistency of data (sometimes the response would be stale). On the other hand, slave nodes should not failed because it could not connect to the master - it means losing hours of work or worse, machine damage if the processus did not mirror what was going on! So in this case consistency was paramount over availability to the network. Of course, this is a bit far-fetched interpretation, as we are talking of local properties to each node rather than the overall properties of the distributed system (in our case, we can say the system was designed to be "eventually" consistent). But I find it interesting to think of each node in these terms, as it illustrates that each one has different constraint related to distribution.


Conclusion
----------

*Achieve resiliency without a name*

En fait, c'est peut-être pas juste faire un système distribué avec des composants non-standard, c'est designer un système distribué en prenant en compte au plus juste ses règles customisées.

Your mileage may vary. With our current experience, we may not make the same choice today. However, do not forget the power of imagination when trying to design and think about a distributed system.