*** Settings ***
Library 	Collections 			
Library 	RequestsLibrary
Library     Reserved    
Library     String




*** Keywords ***

API connection status
    [Arguments]    ${baseurl}   ${sublink}
     				
	Create Session 	All_dogs_list    ${baseurl} 
	${response}   Get Request    All_dogs_list    ${sublink}    
		 Run Keyword If  ${response.status_code} == 200  	Log To Console    Status : ${response.status_code}
		Log To Console   ${response.content}    
		[Return]    ${response.content

		

   
