Feature: calc

Background:
* call read('common.feature')

Scenario:
* eval Runtime.exec('calc')
* def app = new App('Calculator')
# narrow down visual search region
* def r = App.focusedWindow()
* eval r.click('calc-one.png')
* eval r.click('calc-plus.png')
* eval r.click('calc-two.png')
* eval r.click('calc-equals.png')
* def m = s.wait('calc-result-three.png')
* assert m != null
* eval app.close()
