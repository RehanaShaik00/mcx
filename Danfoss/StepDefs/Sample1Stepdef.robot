*** Setting ***
Library     SeleniumLibrary
Variables   ../PageObjects/Login.py

*** Keywords ***
I login
    Sanmple1Stepdef.Lauch Url
    Sample1Stepdef.Enter UserName
    Sample1Stepdef.Enter Password
    Sample1Stepdef.Signin
    
launch url
    open browse     ${url}      headless browser
    
Enter UserName
    input text      ${username}     admin
    
Enter Password
    input text      ${password}     PASS
    
Signin
    click element       ${signin}
    sleep       30
    close browser
