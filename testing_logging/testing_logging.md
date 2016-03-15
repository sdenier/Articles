Testing and Logging: Maximize your Feedback for Development
===========================================================

Developers know that having feedback loops in your development process is crucial to go forward. Such feedback loops exist at different scales and different times in a project life: milestone and delivery, sprint and iteration, daily meetups.

This post focuses on testing and logging practices, both providing fast feedback to the developer at the smallest detail level. Because, some of your [tests should run fast](https://pragprog.com/magazines/2012-01/unit-tests-are-first), and second, you do [log](http://12factor.net/logs) what your system is doing.

Fast feedback is great as long as it allows you to make progress with your current task at hand. This could be:

- an exploratory goal: how does my system behave?
- a validation of your system: does it behave as expected?
- a diagnosis of a bad behavior: why does it behave this way?

As you run often or even continuously, fast feedback also implies you get quite a lot of data in your terminal. This can represent a lot of noise: not all test results and log lines may be relevant, especially when you focus on exploring and fixing an issue.

Typically you do not use testing and logging for the same tasks, although there is some overlapping:

- testing is for functional and design feedback (if you practice TDD)
- logging is for operational feedback

Both are rather complementary, which does not mean you want to use both all the times. So here we are: practical advice about mixing testing and logging to try and get good feedback during development.


Problems when mixing testing and logging
--------------------------------------------------------

- test feedback can be drowned by log
- use dependency injection to inject a custom logger for testing
- nullify log while testing - not a good idea
- customizing the log level for testing: DI, env config
- temporarily disabling logging
