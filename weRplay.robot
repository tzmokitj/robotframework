*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***

SeleniumTestCase
    Create Webdriver    Chrome    executable_path=/usr/local/bin/chromedriver 
    Go To    https://www.google.com
    Wait Until Element Is Visible    name=q    
    Input Text     name=q    weRplay
    Wait Until Element Is Visible    name=btnK    
    Click Button    name=btnK    
    Sleep    3
    Click Element  xpath=(//h3[normalize-space()='weRplay'])[1]
    Click Element  xpath=(//div[@aria-label='menu'])[1]
    Wait Until Element Is Visible  xpath=(//div[@id='menu-item'])[9]
    Click Element  xpath=(//div[@id='menu-item'])[9]
    Input Text    id=email-2    zackwtf@hotmail.com
    Sleep  2
    Input Text    name=name  Pera Peric
    Sleep  2
    Input Text  id=field  Hi, i'm Pera Peric and you are awesome!
    Sleep  2
    Click Element    xpath=(//input[@value='Send'])[1]
    Sleep  5
    Page Should Contain Element  xpath=(//div[@class='text-block-24'])[1]
    Log To Console    Thank you message is being displayed!