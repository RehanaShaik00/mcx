*** Settings ***
Library     JSONLibrary
Library     Collections
Library  SeleniumLibrary

*** Keywords ***
MCXjsondata
    ${json_obj}=        load json from file    C:/Users/99003549/PycharmProjects/demo/Danfoss/MCXJsonData.json
    [Return]    ${json_obj}

