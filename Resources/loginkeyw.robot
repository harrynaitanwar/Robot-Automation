*** Settings ***
Library    SeleniumLibrary
Variables    ../POM/locators.py

*** Keywords ***
Open My Browser
    [Arguments]    ${burl}      ${wbrow}
    Open Browser    ${burl}     ${wbrow}
    maximize browser window

Enter User name
    [Arguments]    ${user}
    input text    ${txt_usr}    ${user}

Enter pass
    [Arguments]    ${pwd}
    input text    ${txt_pws}    ${pwd}

Click on In-patient ward
    click element    ${click_patient_ward}

Lgging In
    click button    ${click_login}

LOgging out
    click link    ${click_logout}

Register a Patient
    click link    ${link_Register_a_Patient}

_Name
    [Arguments]     ${user2}
    input text      ${txt_given}        ${user2}

Family Name
    [Arguments]    ${user3}
    input text    ${txt_family}     ${user3}
    click button    ${btn_nxt}

Gender
    select from list by value    gender     F
    click button    ${btn_nxt}

Birthday
    input text      ${day}      27
    select from list by value    birthdateMonth     4
    input text    ${year}   1996
    click button    ${btn_nxt}

Address
    input text    ${txt_addr}       Lalpeth colory no.4 chandrapur
    input text    ${txt_addr2}      206 shirdi enclave bagh ameer kukatpally hyderabad
    input text    ${txt_city}       Hyderabad
    input text    ${txt_state}      Telangana
    input text    ${country}        India
    input text    ${p_code}         500072
    click button    ${btn_nxt}

Phone Number
    input text    ${ph_no}      +91 9730833995
    click button    ${btn_nxt}

Relationship
    select from list by label    relationship_type      Doctor
    input text    ${p_name}     Dr.Ram Kumbhare
    click button    ${btn_nxt}

Done
    click element    ${confirm}

Main Page
    click link      ${m_page}

_Find Patient Record
    click link    ${click_patient_record}
    input text    ${search_patient}     Madhavi Sharma
    click element    ${select_patient}

Request appointment
    click link    ${link_ba}
    input text    ${app_type}       Infectious Disease
    click element    ${app_save}
    click link      ${m_page}

_Capture Vitals
    click link      ${vitals_link}
    input text      ${search_patient}   Madhavi Sharma
    click element       ${select_vitals}

Closing Browser
    close all browsers
# 1. Username/Password ::: Admin/Admin123
# 2. Click on In-patient ward
#
# Test Scenario’s:
#
# Login
# Logout
# Register a Patient
# Find Patient Record
# View the Patient
# Search a Patient
# Book an Appointment
# Capture Vitals
