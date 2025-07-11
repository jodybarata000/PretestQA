*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Checkout Your Information Page Should Be Open
    Element Should Be Visible    xpath://span[text()='Checkout: Your Information']

Input First Name    [Arguments]    ${first_name}
    Input Text    id:first-name    ${first_name}

Input Last Name    [Arguments]    ${last_name}
    Input Text    id:last-name    ${last_name}

Input Postal Code    [Arguments]    ${postal_code}
    Input Text    id:postal-code    ${postal_code}

Click Continue Button
    Click Button    id:continue

Checkout Overview Page Should Be Open
    Element Should Be Visible    xpath://span[text()='Checkout: Overview']

Click Finish Button
    Click Button    id:finish

Thank You Message Should Be Shown
    Element Should Be Visible    xpath://h2[text()='Thank you for your order!'] 