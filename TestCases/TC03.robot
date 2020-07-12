*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  http://demo.automationtesting.in/Index.html

#defining variables
*** Keywords ***
Loginsteps
    Open Browser    ${url}  ${browser}
    Input Text  id:email    resmimahesan@demo.com
    Click Image     id:enterimg
#defining commonly used steps into a keyword
*** Test Cases ***
LoginTest
    Loginsteps
    Close browser


