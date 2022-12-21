*** Settings ***
Library  Selenium2Library

*** Variables ***
${Application__URL}  http://www.thetestingworld.com/testings
${Browser_Name}    Chrome

*** Keywords ***

*** Test Cases ***
TC_003 Click and Input Functionality
  ${Application__URL}=  Set Variable  http://www.thetestingworld.com/testings
  ${Browser_Name}=  Set Variable  Chrome
  Open Browser  ${Application__URL}  ${Browser_Name}
  Maximize Browser Window
  Input Text    name=fld_username    Helloworld
  Input Text    xpath=//input[@name='fld_email']     abcd@yahoo.com
  Input Text    name=fld_username    Uros
  Clear Element Text  xpath=//input[@name='fld_email']
  Click Button  xpath=//input[@type='submit']
  Sleep  5seconds
  Element Should Be Focused    xpath=//input[@name='fld_email']
  