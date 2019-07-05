Feature: calc

Background:
* call read('common.feature')

Scenario:
* Runtime.exec('calc')
* def app = new App('Calculator')
# narrow down visual search region
* def r = App.focusedWindow()
* r.click('calc-one.png')
* r.click('calc-plus.png')
* r.click('calc-two.png')
* r.click('calc-equals.png')
* def m = s.wait('calc-result-three.png')
* assert m != null
* app.close()
