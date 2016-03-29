Mixing Testing and Logging for a Better Developer Experience
============================================================

People love a great article about a new programming paradigm/vision/motto which change the way you architect/develop/maintain your system. This is not one of those articles. I am gonna talk about the stupid daily life of a programmer - and those problems you don't hear so much about because they seem so dull and obvious: getting the right feedback through tests and logs.


Getting the Right Feedback with Logging
---------------------------------------

What to do with [logging](https://en.wikipedia.org/wiki/Logfile)? A log produces a trace of events, which allows one to reconstruct what has happened. Good practices tell you to have events at different levels of granularity. I especially like the ones from [bunyan](https://github.com/trentm/node-bunyan#levels) on this topic. Shameless copy-paste from the doc:

> "fatal": The service/app is going to stop or become unusable now. An operator should definitely look into this soon.
> "error": Fatal for a particular request, but the service/app continues servicing other requests. An operator should look at this soon(ish).
> "warn": A note on something that should probably be looked at by an operator eventually.
> "info": Detail on regular operation.
> "debug": Anything else, i.e. too verbose to be included in "info" level.
> "trace": Logging from external libraries used by your app or very detailed application logging.

While developing my system, I might use log events to:

- validate its behavior: do I get the expected trace?
- explore how it behaves when running an edge case
- diagnose what leads to an unexpected behavior

But depending on the case, I want different levels of details about the behavior of my system. The default one is "info", since it traces all regular operations. It should be good enough when validating or exploring the system - with the occasional look at debug level when one wants to check finer details. Meanwhile, when debugging, I might run anywhere between the error level (because there is too much noise otherwise) and the debug or trace level (because I want maximum details about what led to this bad behavior).

The important ability here is filtering events, either through a predefined level (all events below being discarded) or, even more interestingly, through a post-mortem filter which takes the full trace but only outputs the chosen events.

Let's take a look at bunyan again. I can configure a stream to output events at or above a level given by the environment (I could actually configure different streams with different levels).

```
// setting log level through environment in bunyan
bunyan.createLogger({
    name: 'myApp',
    level(process.env.LOGLEVEL || 'info')
})
```

Pretty easy right?




On larger systems, another interesting data to add is some kind of context information. This context can indicate clearly where is the system does the event come from. And, more interestingly, it allows one to filter such context when consuming the log. Maybe you only want log events from some parts of the system, or you don't want some events from a noisy module which has no relation to your current concern. Bunyan does help here with a command-line option for filtering. But I also like the approach of [node debug](https://github.com/visionmedia/debug), which is easy to use and provide nice options (although, as its name implies, I would keep it mostly for debugging purpose, and not for as a general logging tool).





So far, so good. That was rather down-to-earth. Notice I did not talk about where to put the log, how to rotate files etc. This is [not your app concern](http://12factor.net/logs). It should just dump on your standard output and let the infrastructure manages it. This, however, will have some impact on how we work with the next practice - testing.




Old
---

Developers know that having feedback loops in your development process is crucial to go forward. Such feedback loops exist at different scales and different times in a project life: milestone and delivery, sprint and iteration, daily meetups.

This post focuses on testing and logging practices, both providing fast feedback to the developer at the smallest detail level. Because, some of your [tests should run fast](https://pragprog.com/magazines/2012-01/unit-tests-are-first), and second, you do [log](http://12factor.net/logs) what your system is doing.

As you run often or even continuously, fast feedback also implies you get quite a lot of data in your terminal. This can represent a lot of noise: not all test results and log lines may be relevant, especially when you focus on exploring and fixing an issue.

Typically you do not use testing and logging for the same tasks, although there is some overlapping:

- testing is for functional and design feedback (if you practice TDD)
- logging is for operational feedback

Both are rather complementary, which does not mean you want to use both all the times. So here we are: practical advice about mixing testing and logging to try and get good feedback during development.


Getting Feedback with Logging
-----------------------------

While running an application, a good use of logging helps with the following tasks:

- validation: does it behave as expected when I run a sample case?
- exploration: how does my system behave when I try to run an edge case?
- diagnosis: what leads the system to this unexpected behavior?

Basically, logging produces a trace of events, which allows one to reconstruct what has happened. But depending on the case, I might not want the same level of details. Typically debugging a bad behavior might require much finer events and data.

That is one the main property to look at and think of when using a logging tool: the level with which to log information. Let's take a look at [bunyan default log levels](https://github.com/trentm/node-bunyan#levels: Fatal > Error > Warning > Info > Debug > Trace. Bunyan defaults is to output anything equal or above the Info level, which is fine for production. When debugging, you might want to switch the log level to Debug or Trace for example.

```
// setting log level through environment in bunyan
bunyan.createLogger({
    name: 'myApp',
    level(process.env.LOGLEVEL || 'info')	
})
```

On larger systems, another interesting data to add is some kind of context information. This context can indicate clearly where is the system does the event come from. And, more interestingly, it allows one to filter such context when consuming the log. Maybe you only want log events from some parts of the system, or you don't want some events from a noisy module which has no relation to your current concern. Bunyan does help here with a command-line option for filtering. But I also like the approach of [node debug](https://github.com/visionmedia/debug), which is easy to use and provide nice options (although, as its name implies, I would keep it mostly for debugging purpose, and not for as a general logging tool).

```
OUTPUT SAMPLE
```


Notice how I left out some concerns, like where should the output go (answer: to stdout, let your infrastructure [stores it somewhere](http://12factor.net/logs)) and how to format the output (answer: as json, let another tool like [bunyan](https://github.com/trentm/node-bunyan) formats the output when you want to consume it).


Getting Feedback with Automated Tests
---------------------------------------

Basically, automated tests can also help with some of the tasks described above:

- system validation: does it behave as expected when I run a sample case?
- bad behavior diagnosis: where does my system fail and why?

But proponents of testing practices know that there is much more to tests than that:

- I have written the test before: does the new code match the test expectations?
- I have refactored this part of the code: did I break anything from the requirements?
- I have updated some tests due to a bug, changes in requirements: where did the system broke and how should I start fixing it?

Depending on my task, I have a very different use of the test report:

- typically when programming incrementally with a test-first feature, I expect to see some red color in my report, but in general I do not need the details. I continue coding until I make it green.
- while refactoring, I expect only green color (or some temporary red if it goes a bit beyond refactoring) in my reporter. Refactoring cycles should be fast (as fast as a few seconds in my edit-save-run tests cycle) and while it is green, I don't care much about the what. A simple green indicator, telling me all my tests are OK is enough.
- while running into unexpected situations (i.e., I see some red when I did not expect it), I want to stop right now and have a quick feedback about what is wrong: which test, where is in the code? Mostly, I just want to focus on that at this point.

Such use patterns have two implications on tests:

- some of your [tests should run fast](https://pragprog.com/magazines/2012-01/unit-tests-are-first), especially when the edit-save-test cycle is less a matter of seconds.
- compared to log events, test reports should be much more focused. I need only the minimal information to tell me it is ok to continue or that something is wrong somewhere.

But what happens when we mix log outputs and test outputs: lots and lots of log events which noisifies your test report. The more your codebase grows, the more tests you have, the faster they run, the more events you get and the more likely to lose the essential information (likes what has failed) into a sea of events. Having to scroll up pages of logs just to get back the stack trace of the failing test is no fun.

The rest of this article will be a small how-to guide about properly mixing test and log so that you get the right feedback out of each other when you need.


Not a good idea: the /dev/null logger
-----------------------------------------

A naive solution would be to use some kind of "null pattern" logger: just discard any log output since they tend to disturb test reports. This is really easy: just instantiate your logger on the fly and inject it into your code. For example with bunyan:

```
bunyan.createLogger({
  name: 'nullLogger',
  streams: [{
    path: '/dev/null'
  }]
});
```

This is what we need while we run in green mode, or while it is obvious while a test fails. However, if you need more information about the test circumstances leading to failures, you will be blind. Worse, you may have set up an error handler in your code which redirects any error to your log. While developing new tests and code, your tests can fail for no obvious reason, but you won't get any feedback since errors are discarded.

```
EXAMPLE of invisible failure (error log in handler)
```


Customizing the log level for tests
---------------------------------------------

Once we have realized we don't want all regular log events but still want errors to appear, the solution is obvious. Just use the right log level.

```
let logger = bunyan.createLogger({
    name: 'testLogger',
    level('error')	
})
// inject logger in your modules while testing
```

Any regular, expected events will be discarded in your tests, leaving just the test report. Only the unexpected errors will appear, which is a good source of information for debugging.

But in some cases this is not enough. You might need more regular data about the circumstances leading to the test failure. Why not having a control about the level of logging when something bad happens?

```
let logger = bunyan.createLogger({
    name: 'testLogger',
    level(process.env.LOGLEVEL || 'error')
})
// inject logger in your modules while testing
```

This way your test report are not disturbed by the log. On the contrary, log events should only appear when something ran amiss, as a mean to further diagnose failure.

*Log appearance should equate test failures.*

This leads to our last refinement case. Say you have an explicit test for your error handler, checking it properly catches the error. Since this is expected behavior, do you want to see the error log in your report?

```
SAMPLE test error
```

Of course not, it would once again pollute your test report and nullify the above principle, making the test report harder to interpret (is something wrong or not?). Once again, the solution in this case is to temporarily disable log output while running the test by decreasing/increasing the log level.

```
SAMPLE log disable
```

Conclusion
---------------

- Set your log level to error by default in your tests
- Use/Inject a logger with a default level of error in your tests: you won't be drowned/annoyed by the regular logs, but you will still get the right feedback when some unexpected error happens.
- Make the log level customizable in the test. When debugging a test, you might want to temporarily increase the volume of information to INFO, DEBUG.
- For the purists, if you write test to test against errors, you might want to temporarily disable logging around the test. This way you don't get the false signal that something is wrong because a error log flashed in your test report - since it is expected.
