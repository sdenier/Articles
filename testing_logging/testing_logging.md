Testing and Logging: Maximize your Feedback for Development
===========================================================

Developers know that having feedback loops in your development process is crucial to go forward. Such feedback loops exist at different scales and different times in a project life: milestone and delivery, sprint and iteration, daily meetups.

This post focuses on testing and logging practices, both providing fast feedback to the developer at the smallest detail level. Because, some of your [tests should run fast](https://pragprog.com/magazines/2012-01/unit-tests-are-first), and second, you do [log](http://12factor.net/logs) what your system is doing.

As you run often or even continuously, fast feedback also implies you get quite a lot of data in your terminal. This can represent a lot of noise: not all test results and log lines may be relevant, especially when you focus on exploring and fixing an issue.

Typically you do not use testing and logging for the same tasks, although there is some overlapping:

- testing is for functional and design feedback (if you practice TDD)
- logging is for operational feedback

Both are rather complementary, which does not mean you want to use both all the times. So here we are: practical advice about mixing testing and logging to try and get good feedback during development.


Getting Feedback with Logging
-----------------------------

While running an application, a good use of logging might help me with the following tasks:

- a validation of your system: does it behave as expected when I run a sample case?
- an exploratory goal: how does my system behave when I try to run an edge case?
- a diagnosis of a bad behavior: what is happening which leads the system to an unexpected behavior?

Basically, logging produces a trace of events, which allows me to reconstruct what has happened. But depending on the case, I might not want the same level of details. Typically debugging a bad behavior might require much finer events and data.

That is one the main property to look at and think of when using a logging tool: the level with which to log information. Let's take a look at [bunyan default log levels](https://github.com/trentm/node-bunyan#levels: Fatal > Error > Warning > Info > Debug > Trace. Bunyan defaults is to output anything equal or above the Info level, which is fine for production. When debugging, you might want to switch the log level to Debug or Trace for example.

On larger systems, another interesting data to add is some kind of context information. This context can indicate clearly where is the system does the event come from. And, more interestingly, it allows one to filter such context when consuming the log. Maybe you only want log events from some parts of the system, or you don't want some events from a noisy module which has no relation to your current concern. Bunyan does help here with a command-line option for filtering. But I also like the approach of [node debug](https://github.com/visionmedia/debug), which is easy to use and provide nice options (although, as its name implies, I would keep it mostly for debugging purpose, and not for as a general loggin tool).

Notice how I left out some concerns, like where should the output go (answer: to stdout, let your infrastructure [stores it somewhere](http://12factor.net/logs)) and how to format the output (answer: as json, let another tool like [bunyan](https://github.com/trentm/node-bunyan) formats the output when you want to consume it).


Getting Feedback with Automated Testing
---------------------------------------

Basically, testing (with automated tests) can also help with some tasks described above:

- system validation: does it behave as expected when I run a sample case?
- bad behavior diagnosis: where does my system fail and why?

Great supporters of testing practices know that there is much more to tests than that (things like requirements by use case, design driven by tests, safety harness for refactoring), but this is out of our current focus.

One common assumption about tests is that you should have a pyramid of tests at different levels of abstraction (although this is a highly debated topic): a few high level tests with end users (costly to run), lots of unit tests at the base.

In any case, some of your [tests should run fast](https://pragprog.com/magazines/2012-01/unit-tests-are-first) to provide you with quick feedbacks about your codebase health. Typically these are unit tests, and they provide you with feedback about the current unit you are working on:

- I have written the test before: does the code I have written match the test expectations?
- I have refactored this part of the code: did I break anything from the requirements?
- I have updated some tests due to changes in requirements, bug identication: where did the system broke and how should I start fixing it?

By running fast tests, I can stay focused on what I am doing and gain lots of confidence. I can change it easily, see I break something as soon as it happened (thus quickly fix it); or try a quick something to see how it impacts the behavior, iteratively building my knowledge into an issue.


Problems when mixing testing and logging
--------------------------------------------------------

- test feedback can be drowned by log
- use dependency injection to inject a custom logger for testing
- nullify log while testing - not a good idea
- customizing the log level for testing: DI, env config
- temporarily disabling logging
