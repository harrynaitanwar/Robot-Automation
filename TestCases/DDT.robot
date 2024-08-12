*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/loginkeyw.robot
Suite Setup    Open My Browser    ${url}       ${browser}

Suite Teardown    Closing Browser

*** Variables ***
${url}      https://demo.openmrs.org/openmrs/login.htm
${browser}      chrome
${user}      Admin
${pwd}      Admin123
${user2}        Madhavi
${user3}        Sharma



*** Test Cases ***
Validating Test Senarios
    [Tags]    Logging In
    set selenium speed    1s
    Enter User name     ${user}
    Enter pass      ${pwd}
    click on in-patient ward
    Lgging In

    [Tags]    Register a Patient
    Register a Patient
    _Name       ${user2}
    Family Name     ${user3}
    Gender
    Birthday
    Address
    Phone Number
    Relationship
    Done
    Main Page

    [Tags]    Find Patient Record
    set selenium speed    1s
    _Find Patient Record

    [Tags]    Book an Appointment
    set selenium speed    1s
    Request appointment

    [Tags]    Capture Vitals
    set selenium speed    1s
    _capture vitals

    [Tags]    Log out
    LOgging out
    Closing Browser


