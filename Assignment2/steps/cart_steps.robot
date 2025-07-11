*** Settings ***
Resource    ../pages/home_pages.robot
Resource    ../pages/cart_pages.robot

*** Keywords ***
User add some items to cart
    Add First Product To Cart
    Add Second Product To Cart

User click Cart icon
    Click Cart Icon

User navigate to Your Cart Page
    Your Cart Page Should Be Open

User click Checkout button on Your Cart Page
    Click Checkout Button 