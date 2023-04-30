*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://www.techlistic.com/p/selenium-practice-form.html
${browser}    chrome

*** Test Cases ***
fillingform
    Open Browser    ${url}    ${browser}
    Input Text    name:firstname    Jhon
    Input Text    name:lastname    Doe
    Select Radio Button    sex    Male
    Select Radio Button    exp    4
    Input Text    xpath://*[@id="datepicker"]    2023/4/30
    Select Checkbox    Automation Tester
    Select Checkbox    QTP
    Select From List By Index    continents    6
    Select From List By Index    selenium_commands    1
    Sleep    10
*** Keywords ***

