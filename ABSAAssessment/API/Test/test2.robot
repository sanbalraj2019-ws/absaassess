*** Settings ***
Library     Selenium2Library
Library 	Collections 			
Library 	RequestsLibrary
Library     Reserved    
Resource    ../Keyword/apiconnection.robot
Resource   ../Variables/apivariable.robot
Resource    ../Keyword/listofdogs.robot
Resource  ../Keyword/checkretriver.robot



*** Test Cases ***

Test0001 API Test
          [Documentation]    
  ...    Check base url connection and content
  [Tags]    apitest001
  
    ${basecontent} =  API connection status  ${baseurl}   ${sublink}
    
Task 001
              [Documentation]    
  ...    Check all breads list and verify retriever is available
  [Tags]    apitest002
  
    ${alldogslist} =  API connection status  ${baseurl}   ${dogslist} 
    Check name in the list   ${alldogslist}   retriever
    
Task 002
    
          [Documentation]    
  ...    Check retriever sub breeds 
  [Tags]    apitest003
  
    ${alldogslist} =  API connection status  ${baseurl}   ${subretriver}   
    
Task 004
    
          [Documentation]    
  ...    Check random image in retriever sub breeds
  [Tags]    apitest004
  
    ${alldogslist} =  API connection status  ${baseurl}   ${subretriverimg}
    

    
    

    
