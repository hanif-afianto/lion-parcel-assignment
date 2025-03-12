*** Settings ***
Library    AppiumLibrary
Resource   ../locators/check_tarif_locators.resource

*** Keywords ***
Input Origin Route
    [Arguments]           ${route}
    Click Element         ${ORIGIN_ADDRESS_FIELD}
    Input Text            ${ROUTE_SEARCH}                ${route}
    Click Element         ${ORIGIN_ADDRESS_TEXT}

Input Destination Route
    [Arguments]           ${route}
    Click Element         ${DESTINATION_ADDRESS_FIELD}
    Input Text            ${ROUTE_SEARCH}                ${route}
    Click Element         ${DESTINATION_ADDRESS_TEXT}

Click Check Tarif Button
    Click Element         ${CHECK_TARIF_BUTTON}

Input Valid Total Weight
    [Arguments]           ${total_weight}
    Input Text            ${TOTAL_WEIGHT}                ${total_weight}

Click Pengiriman Reguler
    Click Element        ${REGULAR_SHIPPING}

Verify Price
    ${price}=            Get Text                        ${REGULAR_ESTIMATED_PRICE}
    ${total_price}=      Get Text                        ${TOTAL_ESTIMATED_PRICE}
    Should Be Equal      ${price}                        ${total_price}                    Prices do not match!