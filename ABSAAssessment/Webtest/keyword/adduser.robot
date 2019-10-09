*** Settings ***
Library   Selenium2Library
Library   Collections 
Resource    ../xpaths/pagexpath.robot
Resource    ../variables/pagevariables.robot

*** Keywords ***
Add given user
    
    [Arguments]    ${i}
        Wait Until Element Is Visible     ${addbutton}  
        Click Button   ${addbutton}
        Input Text    ${fname}    ${fnameval [${i}]}
       Input Text    ${lname}     ${lnameval [${i}]}
        Input Text    ${uname}     ${unameval [${i}]}
        Input Text    ${pass}     ${passval [${i}]}
        Select Radio Button    ${radio}     ${cusval[${i}]}
       Select From List By Label    ${role}   ${roleval[${i}]}
        Input Text    ${email}     ${emailval[${i}]}
       Input Text    ${cell}    ${cellval [${i}]}
       Click Button    ${save}
       Log to console  User created: ${unameval [${i}]}

    