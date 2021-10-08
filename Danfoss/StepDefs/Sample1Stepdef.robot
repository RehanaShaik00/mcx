*** Setting ***
Library     SeleniumLibrary
Variables   ../PageObjects/Login.py

*** Keywords ***
I login
    lauch url
    Enter UserName
    Enter Password
    Signin
    
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
