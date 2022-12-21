*** Settings ***
Library  Selenium2Library
Library    String


*** Variables ***
${Application__URL}  http://www.youtube.com
${Browser_Name}    Chrome

*** Keywords ***

*** Test Cases ***
TC_005 Click and Input Functionality
  ${Application__URL}=  Set Variable  http://www.youtube.com
  ${Browser_Name}=  Set Variable  Chrome
  Open Browser  ${Application__URL}  ${Browser_Name}
  Maximize Browser Window
  ${randomtext}=  Generate Random String
  Input Text    name=search_query    ${randomtext}
  Click Element    id=search-icon-legacy
  Sleep  2seconds
  Clear Element Text    name=search_query
  Click Element    id=endpoint
  Wait Until Element Is Visible  xpath=(//yt-chip-cloud-chip-renderer[@role='tab'])[7]
  Click Element    xpath=(//yt-chip-cloud-chip-renderer[@role='tab'])[7]
  Sleep  5seconds
  Click Element    xpath=(//img)[6]
  ${actual_page}=  Get Location
  Sleep  5
  Location Should Be    ${actual_page}
  #Page Should Contain    ${actual_page}
  #Click Element    id=logo-icon
  #Sleep  5seconds
  #Page Should Contain  www.youtube.com
  #Location Should Be  https://www.youtube.com/
  

  
  




