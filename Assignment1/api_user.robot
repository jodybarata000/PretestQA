*** Settings ***
Library           RequestsLibrary
Library           JSONLibrary

*** Variables ***
${BASE_URL}       https://reqres.in/api
${API_KEY}        reqres-free-v1

*** Test Cases ***
Positive API Flow
    [Tags]    positive    api    gherkin
    Given I have a valid user payload    name=morpheus    job=leader
    When I send a POST request to create a user
    Then the response status code should be 201
    When I send a GET request to get the user by id 2
    Then the response status code should be 200

*** Keywords ***
Given I have a valid user payload
    [Arguments]    ${name}    ${job}
    ${payload}=    Create Dictionary    name=${name}    job=${job}
    Set Test Variable    ${USER_PAYLOAD}    ${payload}

When I send a POST request to create a user
    Create Session    reqres    ${BASE_URL}
    ${headers}=    Create Dictionary    x-api-key=${API_KEY}
    ${response}=    POST On Session    reqres    /users    json=${USER_PAYLOAD}    headers=${headers}
    Set Test Variable    ${POST_RESPONSE}    ${response}

Then the response status code should be 201
    Should Be Equal As Integers    ${POST_RESPONSE.status_code}    201

When I send a GET request to get the user by id 2
    ${headers}=    Create Dictionary    x-api-key=${API_KEY}
    ${response}=    GET On Session    reqres    /users/2    headers=${headers}
    Set Test Variable    ${GET_RESPONSE}    ${response}

Then the response status code should be 200
    Should Be Equal As Integers    ${GET_RESPONSE.status_code}    200 