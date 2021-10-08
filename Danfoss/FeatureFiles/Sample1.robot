*** Settings ***
Library     SeleniumLibrary
Resource    ../StepDefs/Sample1Stepdef.robot

*** Test Cases ***
Login Test
    #bdd
    Given I login

