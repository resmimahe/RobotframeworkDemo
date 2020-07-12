*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/resources.robot
*** Variables ***
${URL}  https://www.facebook.com
${browser}  chrome
*** Test Cases ***
DemoTest
    logintest   ${URL}  ${browser}
    #Set Selenium Speed  0.5 seconds
    ${speed1}=  Get Selenium Speed
    log to console  ${speed1}
    Element Should Be Visible   id:email
    Select Radio Button  sex  2
    Select From List By Index   id:day  10
    Select From List By Label   id:month    Aug
    Select From List By Label   id:year  1996
    Click Element   xpath://i[@class='img sp_nK4QBEPgZVv sx_032e93'][1]
    Click Element   xpath://div[@class='_5lnf uiOverlayFooter _572u']/a
    #Handle Alert    action=ACCEPT
    Click Link  id:privacy-link
    Select Window   title=Data Policy
    ${loc2}=    Get Location
    log to console  ${loc2}
    Close All Browsers









