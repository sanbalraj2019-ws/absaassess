*** Settings ***

Library    Collections    
Library    Selenium2Library
Resource    ../keyword/keywords.robot
Resource    ../keyword/task001.robot
Resource   ../keyword/adduser.robot

*** Test Cases ***
Task2-Web
  [Documentation]    
  ...    Check your name is available
  [Tags]    webtest001
  
   Login weburl 
   ${verifycount} =  Check your name    Balachandar   Santhanam
   Log to console   Position : ${verifycount}
   
 Task 002
      [Documentation]    
  ...    Add user 1 and check available
  [Tags]    webtest002
    Add given user  ${0}
    
    ${verifycount} =  Check your name    FName1   LName1
   Log to console   Position : ${verifycount}
   
 Task 003
      [Documentation]    
  ...    Add user 2 and check availability
  [Tags]    webtest003
  
    Add given user  ${1}
    
    ${verifycount} =  Check your name    FName2   LName2
   Log to console   Position : ${verifycount}
   Close All Browsers
