*** Settings ***
Library  SeleniumLibrary
Resource  ../locators/checkout_locator.robot

*** Keywords ***
Enter Shipping Details
    [Arguments]  ${first_name}  ${last_name}  ${zip}
    Input Text  ${FIRSTNAME_FIELD}  ${first_name}
    Input Text  ${LASTNAME_FIELD}  ${last_name}
    Input Text  ${ZIP_FIELD}  ${zip}
    Click Button  ${CONTINUE_BUTTON}

Click Finish Button
    Click Button  ${FINISH_BUTTON}

Verify Order Confirmation
    Wait Until Element Is Visible  ${ORDER_CONFIRMATION}
