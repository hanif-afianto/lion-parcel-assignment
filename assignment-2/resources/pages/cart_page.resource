*** Settings ***
Library  SeleniumLibrary
Resource  ../locators/cart_locators.robot

*** Keywords ***
Go To Cart
    Click Element  ${CART_ICON}
    Wait Until Page Contains  Your Cart

Click Checkout Button
    Click Button  ${CHECKOUT_BUTTON}
    Wait Until Page Contains  Checkout: Your Information
