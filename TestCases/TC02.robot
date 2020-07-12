*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  http://demo.automationtesting.in/Index.html

#defining variables
*** Keywords ***
*** Test Cases ***
LoginTest
    Open Browser    ${url}  ${browser}
    Get Title
    Input Text  id:email    resmimahesan@demo.com
    Click Image     id:enterimg
    Close browser

