*** Settings ***
Library  Selenium2Library

*** Variables ***
${Application__URL}  http://www.google.com
${Browser_Name}    Chrome

*** Keywords ***

*** Test Cases ***
TC_007 Radio buttons Functionality
  ${Application__URL}=  Set Variable  https://www.google.com
  ${Browser_Name}=  Set Variable  Chrome
  Open Browser  ${Application__URL}  ${Browser_Name}
  Maximize Browser Window
  Input Text  name=q  neymarjr
  Wait Until Element Is Visible  name=btnK
  Click Button  name=btnK
  Sleep  2seconds
  Wait Until Element Is Visible  xpath=//*[contains(text(),'Change to English')]
  Click Element    xpath=//*[contains(text(),'Change to English')]
  Sleep  2seconds   
  Click Element  xpath=(//a[@class='B1uW2d ellip PZPZlf'])[1]
  ${title}=  Get Title
  Log To Console    ${title}
  #Page Should Contain    Neymar Jr.
   #Page Should Contain  ${title}
   Should Be Equal    ${title}    Neymar Jr.
   Title Should Be    ${title}

      