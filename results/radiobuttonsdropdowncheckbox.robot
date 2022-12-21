*** Settings ***
Library  Selenium2Library

*** Variables ***
${Application__URL}  http://www.thetestingworld.com/testings
${Browser_Name}    Chrome

*** Keywords ***

*** Test Cases ***
TC_008 Radio buttons Functionality
  ${Application__URL}=  Set Variable  http://www.thetestingworld.com/testings
  ${Browser_Name}=  Set Variable  Chrome
  Open Browser  ${Application__URL}  ${Browser_Name}
  Maximize Browser Window
  Select Radio Button    add_type    office
  Select Checkbox  name=terms
  Sleep  5seconds
  Unselect Checkbox  name=terms
  Select From List By Index  id=countryId  6
  Sleep  3
  Select From List By Value  id=countryId  13
  Sleep  3
  Select From List By Label  id=countryId  India
  Select From List By Label    id=countryId  United States
  Sleep  5
  Select From List By Label    name=state  Nevada
  Sleep  5
  Select From List By Label    name=city  Las Vegas
  Element Should Contain    id=countryId    United States
  ${attribute}=   Get Element Attribute    name=city    value
  Log To Console  ${attribute}
  Element Attribute Value Should Be    name=city   value    45577   
  