*** Settings ***
Library  Selenium2Library

*** Variables ***
${Application__URL}  http://www.thetestingworld.com/testings
${Browser_Name}    Chrome

*** Keywords ***

*** Test Cases ***
TC_006 Click on link Functionality
  ${Application__URL}=  Set Variable  http://www.thetestingworld.com/
  ${Browser_Name}=  Set Variable  Chrome
  Open Browser  ${Application__URL}  ${Browser_Name}
  Maximize Browser Window
  Click Link  xpath=(//a[@id='menu496'])[1]
  Sleep  5seconds
  Element Text Should Be    xpath=(//span[normalize-space()="Student's blog"])[1]    STUDENT'S BLOG