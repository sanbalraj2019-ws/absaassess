*** Settings ***

Library         Selenium2Library
Resource    ../variables/pagevariables.robot

*** Keywords ***

Login weburl 
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
