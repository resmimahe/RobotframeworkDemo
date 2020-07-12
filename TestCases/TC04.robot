*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  http://demo.automationtesting.in/Index.htm
${browser}  chrome
*** Keywords ***

*** Test Cases ***
Validation
    Open Browser    ${url}  ${browser}
    Input Text  id:email    resmimahesan@demo.com
    Maximize Browser Window
    Set Selenium Speed  2seconds
    Click Image     id:enterimg
    #Title Should Be  http://www.w3.org/1999/html
    #If we could declare the element which we are gonna use oftenly
    ${"firstname"}  Set Variable  xpath://input[@placeholder='First Name']
    Element Should Be Visible   ${"firstname"}
    Input text  ${"firstname"} resmimahesan
    sleep 5
    Clear Element Text  ${"firstname"}
    sleep 3
    Select Radio Button  sex  male
    Select Checkbox  email
    #dropdown selection
    Select From List By Value   id:contact  phone
    Select From List By Index   name:parent 2
    #multiple select from the list also done by same
    Select From List By Value   locator  value
    Select From List By Label   locator value
    Unselect All From List  locator




    Close browser
