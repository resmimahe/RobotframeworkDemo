*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
TimeoutTest
    ${speed}=   Get Selenium Speed
    log to console  ${speed}
    Open browser    https://www.facebook.com    chrome
    Log Title
    Set Selenium Speed  2seconds
    ${speed}=   Get Selenium Speed
    log to console  ${speed}


