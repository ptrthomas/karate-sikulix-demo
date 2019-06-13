@ignore
Feature: example of use: 
* call read('focus.feature')

Scenario:
# use keyboard to switch to the "previous" app window
* eval s.type(Key.TAB, Key.CTRL + Key.ALT)
* eval s.type(Key.ENTER)

# the above is sufficient for most apps
# but the calculator is weird !
# it should be on top now, find it visually
* eval s.find('calculator.png')
# and set the region used in the test to the match above
* def r = s
