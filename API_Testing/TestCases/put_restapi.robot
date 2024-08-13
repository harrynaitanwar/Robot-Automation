*** Settings ***
Library    RequestsLibrary
Library    Collections

*** Variables ***
${base_url}     https://reqres.in/

*** Test Cases ***
Put_Data
    create session    my session    ${base_url}
    ${body}=    create dictionary    id=13   email=rachel@gmail.com     first_name=Rocky   last_name=Rachel    avatar= https://reqres.in/img/faces/13-image.jpg     createdAt=2024-08-13T10:30:55.979Z
    ${header}=      create dictionary    Content-Type=application/json; charset=utf-8
    ${response}=    put request    my session       api/users/12      data=${body}    headers=${header}
    log to console    ${response.status_code}
    log to console    ${response.content}

#    Validation
    ${status}=      convert to string    ${response.status_code}
    should be equal    ${status}        200
    ${content}=     convert to string    ${response.content}
    should contain    ${content}        rachel@gmail.com