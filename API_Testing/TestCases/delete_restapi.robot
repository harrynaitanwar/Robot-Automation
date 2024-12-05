*** Settings ***
Library    RequestsLibrary
Library    Collections

*** Variables ***
${base_url}     https://reqres.in/

*** Test Cases ***
Delet_Data_Id
    create session    my session    ${base_url}
    ${response}=    delete request   my session       api/users/12
    log to console    ${response.status_code}
    log to console    ${response.content}

#    Validation
    ${status}=      convert to string    ${response.status_code}
    should be equal    ${status}        204
