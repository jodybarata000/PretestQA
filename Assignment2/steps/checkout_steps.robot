*** Settings ***
Resource    ../pages/checkout_pages.robot

*** Keywords ***
User navigate to Checkout: Your Information page
    Checkout Your Information Page Should Be Open

User input First Name ${first_name}
    Input First Name    ${first_name}

User input Last Name ${last_name}
    Input Last Name    ${last_name}

User input Zip/Postal Code ${postal_code}
    Input Postal Code    ${postal_code}

User click Continue button on Checkout: Your Information page
    Click Continue Button

User navigate to Checkout: Overview page
    Checkout Overview Page Should Be Open

User click Finish button on Checkout: Overview page
    Click Finish Button

Products successfully purchased
    Thank You Message Should Be Shown

Message "Thank you for your order" should be shown
    Thank You Message Should Be Shown 