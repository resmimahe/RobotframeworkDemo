*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
logintest
    [Arguments]  ${launch}    ${Brow}
    Open browser    ${launch}  ${Brow}
    ${speed}=   Get Selenium Speed
    log to console  ${speed}
    ${title1}=  Get Title
    log to console  ${title1}
    ${loc1}=    Get Location
    log to console  ${loc1}
    Maximize Browser Window
