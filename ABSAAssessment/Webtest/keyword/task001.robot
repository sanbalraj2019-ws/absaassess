*** Settings ***
Library   Selenium2Library
Library   Collections 
Library   Reserved
Library   String
Resource    ../variables/pagevariables.robot


*** Variables ***

*** Keywords ***
Check your name   
    [Arguments]   ${checkfirstname}   ${checklastname}
    ${itemcount} =   Get Element Count    //table/tbody/tr/td[1]
    BuiltIn.Log To Console    ${itemcount}
    
   :FOR  ${i}   IN RANGE  1   ${itemcount}
   \    ${item1} =  Get WebElement    //table/tbody/tr[${i}]/td[1]
   \    ${value1} =  Get Element Attribute     ${item1}    innerHTML    
   \    ${item2} =  Get WebElement    //table/tbody/tr[${i}]/td[2]
   \    ${value2} =  Get Element Attribute     ${item2}    innerHTML  
   \    ${fullname} =  Catenate   ${value1}    ${value2}  
   \    ${checkname} =  Catenate   ${checkfirstname}   ${checklastname}
   \    BuiltIn.Return From Keyword If    '${fullname}' == '${checkname}'  ${i}
   \    Exit For Loop If    ${i} == ${itemcount} 
   
     
      
   
   
   

    
 