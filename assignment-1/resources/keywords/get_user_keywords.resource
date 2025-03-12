*** Settings ***
Library    RequestsLibrary

*** Keywords ***
Get Single User
    [Arguments]    ${user_id}
    ${response}=    GET    ${BASE_URL}/users/${user_id}
    Status Should Be    200
    RETURN    ${response.json()}
