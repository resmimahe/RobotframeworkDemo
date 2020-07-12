*** Settings ***
Library     SeleniumLibrary

*** Variables ***
*** Keywords ***
*** Test Cases ***
LoginTest
    Open Browser    http://demo.automationtesting.in/Index.html     chrome
    Get Title
    Input Text  id:email    resmimahesan@demo.com
    Click Image     id:enterimg
    Close browser

