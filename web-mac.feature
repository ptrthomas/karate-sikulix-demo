Feature: web browser automation

Background:
* call read('common.feature')
* def browser = 'Safari'

Scenario:
* s.type(' ', Key.CMD)
* s.type(browser + Key.ENTER)
* def app = App.open(browser)
* s.type('t', Key.CMD)
* s.type('https://www.seleniumeasy.com/test/basic-first-form-demo.html' + Key.ENTER)
* s.wait('please-enter.png', 5.0)
* s.click()
* eval sleep(1)
* s.type('hello world')
* s.click('show-message.png')
* def m = s.find('show-message-result.png')
* assert m != null
* s.type('w', Key.CMD)