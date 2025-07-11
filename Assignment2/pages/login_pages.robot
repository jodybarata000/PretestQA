*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Open Login Page
    Open Browser    https://www.saucedemo.com/    chrome
    Maximize Browser Window

Input Username    [Arguments]    ${username}
    Input Text    id:user-name    ${username}

Input Password    [Arguments]    ${password}
    Input Text    id:password    ${password}

Click Login Button
    Click Button    id:login-button

Login Page Should Be Open
    Title Should Be    Swag Labs 