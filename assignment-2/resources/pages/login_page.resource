*** Settings ***
Library  SeleniumLibrary
Resource  ../locators/login_locators.robot

*** Keywords ***
Login To SauceDemo
    [Arguments]  ${username}  ${password}
    Input Text  ${USERNAME_FIELD}  ${username}
    Input Text  ${PASSWORD_FIELD}  ${password}
    Click Button  ${LOGIN_BUTTON}
    Wait Until Page Contains  Products
