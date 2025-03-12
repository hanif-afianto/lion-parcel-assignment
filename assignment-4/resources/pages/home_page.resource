*** Settings ***
Library    AppiumLibrary
Resource   ../locators/home_locators.resource

*** Keywords ***
Click Cek Tarif Menu
    Click Element            ${CEK_TARIF_MENU}