*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Home Page Should Be Open
    Element Should Be Visible    xpath://span[text()='Products']

Add First Product To Cart
    Click Button    xpath://*[text()='29.99']/following-sibling::button

Add Second Product To Cart
    Click Button    xpath://*[text()='9.99']/following-sibling::button

Click Cart Icon
    Click Element    id:shopping_cart_container 