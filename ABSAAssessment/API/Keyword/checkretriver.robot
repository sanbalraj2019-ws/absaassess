*** Settings ***
Library 	Collections 			
Library 	RequestsLibrary
Library     Reserved    
Resource    ../Variables/apivariable.robot
Library     String
Library    OperatingSystem    
Library    HttpLibrary.HTTP



*** Keywords ***
Check name in the list
    [Arguments]    ${message}    ${checkname}
    Get Lines Matching Pattern    ${message}    ${checkname}      
    

     