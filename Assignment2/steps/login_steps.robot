*** Settings ***
Resource    ../pages/login_pages.robot
Resource    ../pages/home_pages.robot

*** Keywords ***
Given User login as ${username} ${password}
    # Open Login Page
    Input Username    ${username}
    Input Password    ${password}
    Click Login Button
    Home Page Should Be Open 