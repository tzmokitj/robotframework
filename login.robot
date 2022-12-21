*** Settings ***
Library  Selenium2Library

*** Variables ***
${Application__URL}  http://www.demo.guru99.com/V4/
${Browser_Name}    Chrome

*** Keywords ***

*** Test Cases ***
TC_007 login Functionality
  Open Browser  ${Application__URL}  ${Browser_Name}
  Maximize Browser Window
  Input Text    xpath=//input[@name='uid']    mngr463195
  Input Password    xpath=//input[@name='password']    EsAsUqE
  Click Button    xpath=//input[@type='submit']
  #Wait Until Location Is    http://www.demo.guru99.com/V4/manager/Managerhomepage.php
  #${landing_page}  http://www.demo.guru99.com/V4/manager/Managerhomepage.php
  Sleep  5
  ${actual_page}=  Get Location
  Should Be Equal   https://www.demo.guru99.com/V4/manager/Managerhomepage.php  ${actual_page}
  #Should Be Equal As Strings    http://www.demo.guru99.com/V4/manager/Managerhomepage.php    ${actual_page}
  #Should Be Equal    ${actual_page}    http://www.demo.guru99.com/V4/manager/Managerhomepage.php
  #Page Should Contain    ${actual_page}
  