Mixing Logging and Testing to Customize your Feedback during Development
================================================

Outline
---------

What do logging and testing have in common? Feedback for Development

  - Testing is for functional and design feedback
  - Logging is for operational feedback


When logging, I recently made a survey of different tools and I kind of like the bunyan approach.

also 12 factors app

Log Feedback
-------------------

- timestamp (when)
- module/component (where/who)
- description (what)
- other information (especially data dump)



Feedback during test
----------------------------

When testing, I like to practice TDD/BDD "a la rspec/jasmine/mocha". this also means I try to practice outside-in testing (starting from a high level description in BDD, then the expected output, backtracking to the actions and setup to run the test - which leads to a much more focused testing with a minimal setup, less wandering than when starting from setup (ok, I have  a text fixture, where should I go now?)).

Test reporter for fast feedback: dots, spec...

What when developing a test / debugging a crashing test?

Problems when mixing testing and logging
--------------------------------------------------------

- test feedback can be drowned by log
- use dependency injection to inject a custom logger for testing
- nullify log while testing - not a good idea
- customizing the log level for testing: DI, env config
- temporarily disabling logging
