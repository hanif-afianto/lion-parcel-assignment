*** Settings ***
Resource    ../../resources/keywords/create_user_keywords.resource
Resource    ../../resources/variables/user_variables.resource

*** Test Cases ***
Given I provide valid user details "${name}" and "${job}"
    ${name}=    Set Variable    
    Set Test Variable    ${USER_NAME}    ${name}
    ${job}=    Set Variable    
    Set Test Variable    ${USER_JOB}    ${job}

When I send a request to create a user
    ${created_user}=    Create New User    ${USER_NAME}    ${USER_JOB}
    Set Suite Variable    ${CREATED_USER}    ${created_user}

Then the response status should be 201
    Status Should Be    201

And the user should be created with the correct details
    Verify User Name    ${CREATED_USER}    ${USER_NAME}
    Verify User Job     ${CREATED_USER}    ${USER_JOB}
