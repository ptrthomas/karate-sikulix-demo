:warning: After more experiments, I came to the conclusion that SikuliX was not stable enough, and at least in my opinion, it is a very old code-base and not well designed. So I decided to re-write SikuliX as part of the Karate project.

[karate-robot](https://github.com/intuit/karate/tree/master/karate-robot) is available from version 0.9.5 onwards. Desktop automation is something that many teams need, so please contribute !

# karate-sikulix-demo

Demo of using [Karate](https://github.com/intuit/karate) and [SikuliX](http://sikulix.com) for visual testing of Windows desktop apps. And other Karate capabilities that show off the language-neutral [stand-alone executable](https://github.com/intuit/karate/tree/master/karate-netty#standalone-jar).

What is notable is how you can use the [Karate UI](https://github.com/intuit/karate/wiki/Karate-UI) to step-through and debug / troubleshoot tests. Click the image below to watch a demo video.

<a href="https://twitter.com/ptrthomas/status/1139227647496445952"><img src="https://pbs.twimg.com/ext_tw_video_thumb/1139227560850575360/pu/img/n98Gzn50Wdxdg3NK.jpg" height="300" /></a>

## Instructions
* only a [Java Runtime Environment](https://www.oracle.com/technetwork/java/javase/downloads/index.html) (JRE) is needed as a pre-requisite (version 1.8.0_112 or greater)
  * verify this on the command line by typing: `java -version`
* clone this Git repository or simply download it as a zip file and extract it
* download the latest `sikulixapi.jar` from [here](https://raiman.github.io/SikuliX1/downloads.html)
  * this is optional if you only want to run the [other demos](#other-demos)
* download the latest Karate standalone JAR (`karate-0.9.4.jar`) from [here](https://dl.bintray.com/ptrthomas/karate)
* place the JAR file(s) in the same folder as the project you cloned, and rename the Karate JAR to `karate.jar`
* (Windows only) run the command:
  * `karate calc.feature`
  * you can also step-through using the Karate UI:
    * `karate calc.feature -u`

## Notes
* no Java IDE or code compilation required
* with a "visual" approach, there is no need to worry about getting the control names or id-s and messing around with "inspect.exe"
* being able to step-through and re-play steps is key to maintenance in the long term
* Karate makes things like re-usable functions, assertions and reports possible
* the [Karate Visual Studio Code extension](https://marketplace.visualstudio.com/items?itemName=kirkslota.karate-runner) created by [Kirk Slota](https://twitter.com/kirk_slota) allows you to [run a feature file directly](https://twitter.com/KarateDSL/status/1149828960101924864) from the IDE.

## Other Demos

Note that you need the `sikulixapi.jar` only for the first one below.

| Command | Description |
| ------- | ----------- |
`./karate web-mac.feature` | Mac only (you may need to make the `karate` batch file [executable](https://stackoverflow.com/a/5126052/143475) first) demo of using SikuliX to automate a web-browser "visually". You can try to edit the test to use another browser, [see video](https://twitter.com/ptrthomas/status/1140644188960112640)
`java -jar karate.jar calc-driver.feature` | (Windows only) using the Microsoft [WinAppDriver](https://github.com/Microsoft/WinAppDriver) and Karate's [UI automation](https://github.com/intuit/karate/tree/master/karate-core) capabilities, and you can compare this with `calc.feature` which uses SikuliX
`java -jar karate.jar graphql.feature` | GraphQL web-service API test that shows off advanced JSON assertions in the response. Make sure you view the HTML reports in `target/cucumber-html-reports`
`java -jar karate.jar github.feature` | Uses Chrome and Karate's [native web-browser UI automation](https://github.com/intuit/karate/tree/master/karate-core) capabilities, this should work out of the box if you have Chrome installed
`java -jar karate.jar -m cats-mock.feature -p 8080` | Starts [mock API server](https://github.com/intuit/karate/tree/master/karate-netty#mock-server) on port `8080`, now you can open `cats.html` from the file system and play around. This demonstrates how web-dev teams can use Karate.
`java -jar karate.jar cats-test.feature` | Runs a test against the mock server above (which has to be started and running first using the above command). You can also add a `-u` option to see how to step-through a test using the Karate UI. Note how you can *re-play* any step at any time, something you can't do with traditional IDEs or de-buggers.
`java -jar karate.jar cats-test.feature -e mock` | Shows how a karate feature can start a mock automatically using JavaScript. Compare this with the command above. |


