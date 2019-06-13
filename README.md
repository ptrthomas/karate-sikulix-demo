# karate-sikulix-demo
Demo of using [Karate](https://github.com/intuit/karate) and [SikuliX](http://sikulix.com) for visual testing of Windows desktop apps.

What is notable is how you can use the [Karate UI](https://github.com/intuit/karate/wiki/Karate-UI) to step-through and debug / troubleshoot tests. 

## Instructions
* clone this Git repository
* download the latest `sikulixapi.jar` from [here](https://raiman.github.io/SikuliX1/downloads.html)
* download the latest Karate standalone JAR (`karate-0.9.4.BETA1.jar`) from [here](https://dl.bintray.com/ptrthomas/karate)
* place both JAR files in the same folder as the project you cloned, and rename the Karate JAR to `karate.jar`
* run the command:
  * `karate calc.feature`
* you can also step-through using the Karate UI:
  * `karate calc.feature -u`
* refer to [this video](https://twitter.com/ptrthomas/status/1139227647496445952) for a demo and explanation 

## Notes
* no code compilation required
* with a "visual" approach, there is no need to worry about getting the control names or id-s and messing around with "inspect.exe"
* being able to step-through and re-play steps is key to maintenance in the long term
* Karate makes things like re-usable functions, assertions and reports possible
* you can use this Visual Studio Code plugin for [Cucumber / Gherkin](https://marketplace.visualstudio.com/items?itemName=stevejpurves.cucumber)
