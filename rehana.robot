*** Settings ***
Library     SeleniumLibrary

*** Variables ***

*** Keywords ***

*** Test Cases ***
Login
    set selenium implicit wait      200seconds
    set selenium speed      1seconds
    open browser    http://118.185.187.242:6031/      chrome
    maximize browser window
    input text      xpath://input[@id='usernameDisplay']    admin
    input text      xpath://input[@id='password']           PASS
    click element       xpath://input[@id='button_login']
    sleep       10
    ${gettext}=     get text    xpath://*[@id="supervisor_table"]/tbody/tr[2]/td[1]
    log to console  ${gettext}
    #${gettext1}=     get text    xpath://thead/tr/td[1]
    #log to console  ${gettext1}
    ${response}    Get Text    xpath=//*[@id="tabs"]/ul/li
    Should Be Equal As Strings    ${response}    Device List
    log to console       ${response}
    ${response}    Get Text    xpath=//*[@id="main_menu_contained"]
    log to console       ${response}
    ${response}    Get Text    xpath=//td[@id='pageId']
    log to console       ${response}
    element should be visible       xpath://thead/tr/td[1]
