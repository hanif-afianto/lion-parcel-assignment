*** Settings ***
Library    AppiumLibrary
Resource   ../../resources/config/environment.resource
Resource   ../../resources/pages/home_page.resource
Resource   ../../resources/pages/check_tarif_page.resource

*** Test Cases ***
Given the application is launched
    Start Application

When the user opens the Cek Tarif menu
    Click Cek Tarif Menu

And the user enters origin route ${origin_route} and destination route ${destination_route}
    Input Origin Route             Tigaraksa
    Input Destination Route        Balaraja
    Click Check Tarif Button

And the user enters total weight ${weight}
    Input Valid Total Weight        100

And the user selects Regular shipping option
    Click Pengiriman Reguler

Then the user should see the exact price between the Regular shipping cost and the total estimated cost
    Verify Price