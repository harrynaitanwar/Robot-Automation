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
ValidatingTestCase
    set selenium speed    2s
    Enter User name     ${user}
    Enter pass      ${pwd}
    click on in-patient ward
    Lgging In
    Register a Patient
    _Name       ${user2}
    Family Name     ${user3}
    Gender
    Birthday
    Address
    Done
    Main Page
    Find Patient Record




# Login
# Logout
# Register a Patient
# Find Patient Record
# View the Patient
# Search a Patient
# Book an Appointment
# Capture Vitals


