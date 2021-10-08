*** Setting ***
Library     SeleniumLibrary
Resource    ../Keywords/LoginKeywords.robot


*** Keywords ***
I login
    lauch url
    Enter UserName
    Enter Password
    Signin