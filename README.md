# karate-sikulix-demo
Demo of using [Karate](https://github.com/intuit/karate) and [SikuliX](http://sikulix.com) for visual testing of Windows desktop apps.

What is notable is how you can use the [Karate UI](https://github.com/intuit/karate/wiki/Karate-UI) to step-through and debug / troubleshoot tests. 

## Instructions
* only a [Java Runtime Environment](https://www.oracle.com/technetwork/java/javase/downloads/index.html) (JRE) is needed as a pre-requisite (version 1.8.0_112 or greater)
  * verify this on the command line by typing: `java -version`
* clone this Git repository or simply download it as a zip file and extract it
* download the latest `sikulixapi.jar` from [here](https://raiman.github.io/SikuliX1/downloads.html)
* download the latest Karate standalone JAR (`karate-0.9.4.BETA2.jar`) from [here](https://dl.bintray.com/ptrthomas/karate)
  * `BETA2` has a nice improvement where the `eval` keyword is optional for method calls on variables
* place both JAR files in the same folder as the project you cloned, and rename the Karate JAR to `karate.jar`
* run the command:
  * `karate calc.feature`
* you can also step-through using the Karate UI:
  * `karate calc.feature -u`
* refer to [this video](https://twitter.com/ptrthomas/status/1139227647496445952) for a demo and explanation 

## Notes
* no IDE or code compilation required
* with a "visual" approach, there is no need to worry about getting the control names or id-s and messing around with "inspect.exe"
* being able to step-through and re-play steps is key to maintenance in the long term
* Karate makes things like re-usable functions, assertions and reports possible
* you can use this Visual Studio Code plugin for [Cucumber / Gherkin](https://marketplace.visualstudio.com/items?itemName=stevejpurves.cucumber)
