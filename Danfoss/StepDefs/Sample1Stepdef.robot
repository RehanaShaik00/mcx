*** Setting ***
Library     SeleniumLibrary
Variables   ../PageObjects/Login.py

*** Keywords *** 
Launch Url
    open browser     ${url}      headless chrome
    
Enter UserName
    input text      ${username}     admin
    
Enter Password
    input text      ${password}     PASS
    
Signin
    click element       ${signin}
    sleep       30
    close browser
