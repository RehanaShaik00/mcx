*** Settings ***
Library     JSONLibrary
Library  SeleniumLibrary

*** Keywords ***
loadSVB5jsondata
    ${json_obj}=        load json from file    DanfossE2EAutomation/SVB5JsonData.json
    [Return]    ${json_obj}

