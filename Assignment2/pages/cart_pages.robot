*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Your Cart Page Should Be Open
    Element Should Be Visible    xpath://span[text()='Your Cart']

Click Checkout Button
    Click Button    id:checkout 