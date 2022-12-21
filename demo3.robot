*** Settings ***
Library  Selenium2Library

*** Variables ***
${Application__URL}  http://www.thetestingworld.com/testings
${Browser_Name}    Chrome

*** Keywords ***

*** Test Cases ***
TC_001 Login Logout Functionality
  ${Application__URL}=  Set Variable  http://www.thetestingworld.com/testings
  ${Browser_Name}=  Set Variable  Chrome
  Open Browser  ${Application__URL}  ${Browser_Name}
  Maximize Browser Window
  Go To    https://www.google.com
  Go Back
  ${Current_Location}=  Get Location
  Log To Console    ${Current_Location}
  Location Should Be    https://www.thetestingworld.com/testings/
  Element Should Be Enabled    xpath=(//input[@value='Sign up'])[1]
  
  





