*** Settings ***
Library 	Collections 			
Library 	RequestsLibrary
Library     Reserved    
Resource    ../Variables/apivariable.robot



*** Keywords ***

List of Breads
    Create Session 	All_dogs_list    ${baseurl}      				
	${listofdogs}   Get Request    All_dogs_list    ${dogslist} 
	Log to Console     ${listofdogs.content}           
	  
    	