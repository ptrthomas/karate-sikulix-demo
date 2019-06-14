@ignore
Feature: sikuli common

Scenario:
* def Screen = Java.type('org.sikuli.script.Screen')
* def Key = Java.type('org.sikuli.script.Key')
* def App = Java.type('org.sikuli.script.App')
* def Settings = Java.type('org.sikuli.basics.Settings')
* def ImagePath = Java.type('org.sikuli.script.ImagePath')

* ImagePath.add('images')
* Settings.Highlight = true
* def s = new Screen()

* def Runtime = Java.type('java.lang.Runtime').getRuntime()
* def sleep = function(t){ java.lang.Thread.sleep(t * 1000) }
# convenience function to fire multiple keyboard events in one line
* def type = function(){ karate.forEach(arguments, function(k, v){ s.type(v) }) }
# this will wait for t seconds and if a match is found will click
# useful for handling random dialogs that may pop up
* def wait = function(x, t){ try { return s.wait(x, t).click() } catch(e) { return null } }