*** Settings ***
Resource    ../../resources/keywords/get_user_keywords.resource
Resource    ../../resources/variables/user_variables.resource

*** Test Cases ***
Given I have a valid user ID
    Log    User ID is ${USER_ID}

When I request the user details
    ${retrieved_user}=    Get Single User    ${USER_ID}
    Set Suite Variable    ${RETRIEVED_USER}    ${retrieved_user}

Then the response status should be 200
    Status Should Be    200

And the user details should match expectations
    Should Contain    ${RETRIEVED_USER}    data
