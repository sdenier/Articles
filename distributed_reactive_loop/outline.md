Resiliency without a Name: the Distributed Reactive Loop
========================================================

This is both

- a technical story about a simple solution to the resiliency problem in distributed systems (how to recover when something bad happens - CAP theorem)
- an educational story about strong constraints leading to simple solutions

Tradeoffs of CAP vary depending on system perspectives: in some place you sacrifice consistency for availability, in some other availability for consistency - but you can always have partition on the internet.


Context
-------

When you first elaborate on a distributed system which should pilot multiple processes across a network, be resilient to faults. You readily start to fantasize about all the fun stuff you have to set up: workers, queues, databases, supervisor/monitor...

Cost of setting up such an architecture when the first thing you want is a proof of concept.

Thinking with constraints can lead to simplification and invention: how to achieve resiliency between nodes without a complex architecture. Let each node not care about other nodes, store the minimal amount of state necessary (and avoid duplication), and make nodes react to events. Basically, given my own state A, when event X happens, what should I do?

Without sophisticated queues or synchronized state, your best bet at selecting the right choice is to make a round-trip between two nodes. If you can make it, then you can make a fair guess about the next system state and proceed. If not, then just wait for the next opportunity. Hence, resiliency without a name comes when you can design a lightweight (with simple "reactive" rules) feedback loop between distributed nodes.

YMMV

Plan
----

- the problem: what are the constraints? How does it affect the design of the nodes? For the system as a whole?
- solution: how does each node works?
- solution: how does the global loop work?
- solution recap: benefits? compromises? weaknesses? (some synchronicity, but no stale messages)
- conclusion: the timing/project constraint - at the time, given the nature of the problem and our lack of understanding (what was the real/underhood problems?), we did not want to choose existing off-the-shelf components and setup a fully designed infrastructure. Instead, the choice was to design a custom architecture, one that was simple to understand and extend as we incrementally develop the next features and got a better understanding of the governing rules of our system. With time, we come to appreciate the simplicity of the loop, as we always know where to look for decisions to be made, and how communication would happen between the nodes. This made the distributed aspect simple to understand and allows us to focus on the details of each node working independantly.
