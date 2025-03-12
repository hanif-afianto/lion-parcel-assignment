*** Settings ***
Library  SeleniumLibrary
Resource  ../../resources/config/environment.robot
Resource  ../../resources/pages/login_page.robot
Resource  ../../resources/pages/product_page.robot
Resource  ../../resources/pages/cart_page.robot
Resource  ../../resources/pages/checkout_page.robot


*** Test Cases ***
Given the user is on the SauceDemo login page
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window

When the user logs in with valid credentials
    Login To SauceDemo  standard_user  secret_sauce

And the user adds "Sauce Labs Backpack" to the cart
    Add Product To Cart  Sauce Labs Backpack

And the user proceeds to checkout
    Go To Cart
    Click Checkout Button

And the user enters shipping details
    Enter Shipping Details  Hanif  Afianto  12345

And the user confirms the order
    Click Finish Button

Then the order should be successfully placed
    Verify Order Confirmation
    Close Browser