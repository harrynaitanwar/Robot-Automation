*** Settings ***
Library    RequestsLibrary
Library    Collections

*** Variables ***
${base_url}     https://reqres.in/

*** Test Cases ***
Get_Data
    create session    my session    ${base_url}
    ${response}=    get request    my session       api/users
    log to console    ${response.status_code}
    log to console    ${response.content}

#    Validation
    ${status}=      convert to string    ${response.status_code}
    should be equal    ${status}        200
    ${content}=     convert to string    ${response.content}
    should contain    ${content}        Janet
