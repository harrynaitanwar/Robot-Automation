*** Settings ***
Library    JSONLibrary
Library    os
Library    Collections

*** Variables ***

*** Test Cases ***
ValidatingTest
    ${data}=    load json from file     F:/Live Project/RFW/Robot-Automation/Json_Testing/test.json
    ${get_first_name}=    get value from json    ${data}      $.first_name
    ${get_last_name}=    get value from json    ${data}      $.last_name
    ${get_hair_color}=      get value from json    ${data}      $.personal.physical_features.hair_color
    ${gender}=      get value from json    ${data}       $.personal.physical_features.gender
    log to console      ${get_hair_color[0]}
    # Validating Test Case
    should be equal    ${get_first_name[0]}     Ody
    should be equal    ${get_last_name[0]}     Rockey
    should be equal   ${get_hair_color[0]}     Purple
    should be equal    ${gender[0]}        Male
