*** Settings ***
Resource    ../pages/login_pages.robot
Resource    ../pages/home_pages.robot
Resource    ../pages/cart_pages.robot
Resource    ../pages/checkout_pages.robot
Resource    ../steps/login_steps.robot
Resource    ../steps/cart_steps.robot
Resource    ../steps/checkout_steps.robot
Test Setup    Open Login Page
Test Teardown    Close Browser

*** Variables ***
${valid_username}    standard_user
${valid_password}    secret_sauce
${first_name}        John
${last_name}         Doe
${postal_code}       12345

*** Test Cases ***
Valid Checkout
    Given User login as ${valid_username} ${valid_password}
    And User add some items to cart
    When User click Cart icon
    Then User navigate to Your Cart Page
    When User click Checkout button on Your Cart Page
    Then User navigate to Checkout: Your Information page
    When User input First Name ${first_name}
    And User input Last Name ${last_name}
    And User input Zip/Postal Code ${postal_code}
    And User click Continue button on Checkout: Your Information page
    Then User navigate to Checkout: Overview page
    When User click Finish button on Checkout: Overview page
    Then Products successfully purchased
    And Message "Thank you for your order" should be shown