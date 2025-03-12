*** Settings ***
Library  SeleniumLibrary
Resource  ../locators/product_locators.robot

*** Keywords ***
Add Product To Cart
    [Arguments]  ${product_name}
    ${PRODUCT_BUTTON}  Set Variable  ${PRODUCT_BUTTON_TMPL.replace("{product_name}", "${product_name}")}
    Click Button  ${PRODUCT_BUTTON}
    Wait Until Element Is Visible  ${CART_BADGE}  timeout=10s