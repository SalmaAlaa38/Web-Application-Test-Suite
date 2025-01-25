*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${Login-Url}    http://localhost:7272
${Browser}    Chrome
${Username}     demo
${Password}     mode

*** Test Cases ***
Valid Login
    Open Browser To Login Page
    Type In Username    demo
    Type In Password    mode
    Submit Credentials
    Welcome Page Should Be Open
    [Teardown]  Close Browser


*** Keywords ***
Open Browser To Login Page
    Open Browser    ${Login-Url}   ${Browser}
    Title Should Be     Login Page

Type In Username
    [Arguments]     ${Username}
    Input Text      id=username_field     ${Username}

Type In Password
    [Arguments]     ${Password}
    Input Text      id=password_field     ${Password}

Submit Credentials
    Click Button    id=login_button

Welcome Page Should Be Open
    Title Should Be     Welcome Page