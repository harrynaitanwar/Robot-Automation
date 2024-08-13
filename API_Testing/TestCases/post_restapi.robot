*** Settings ***
Library    RequestsLibrary
Library    Collections

*** Variables ***
${base_url}     https://reqres.in/

*** Test Cases ***
Get_Data
    create session    my session    ${base_url}
    ${body}=    create dictionary    id=8   email=shrutika728@gmail.com     first_name=shruti   last_name=sharma    avatar= https://reqres.in/img/faces/8-image.jpg     createdAt=2024-08-13T10:30:55.979Z
    ${header}=      create dictionary    Content-Type=application/json; charset=utf-8
    ${response}=    post request    my session       api/users      data=${body}    headers=${header}
    log to console    ${response.status_code}
    log to console    ${response.content}

#    Validation
    ${status}=      convert to string    ${response.status_code}
    should be equal    ${status}        201
    ${content}=     convert to string    ${response.content}
    should contain    ${content}        shrutika728@gmail.com