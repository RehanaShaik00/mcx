*** Settings ***
Library     SeleniumLibrary
Resource    ../MCXJsonData.Robot
Variables   ../PageObjects/Login.py


*** Keywords ***
lauch url
    open browser    ${url}      ${browser}

Enter UserName
    ${user}     MCXjsondata
    input text      ${username}        ${user['username']}

Enter Password
    input text      ${password}       PASS

Signin
    click element       ${signin}
    sleep       30
    close browser