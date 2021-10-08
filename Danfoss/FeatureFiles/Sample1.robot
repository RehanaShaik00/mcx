*** Settings ***
Library     SeleniumLibrary
Resource    ../StepDefs/Sample1Stepdef.robot

*** Test Cases ***
Login Test
    Given Launch Url
    When Enter UserName
    Then Enter Password
    Then Signin

