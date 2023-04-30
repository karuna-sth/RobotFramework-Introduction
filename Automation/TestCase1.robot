*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
${url}    https://www.google.com/
${browser}    chrome


*** Test Cases ***
Valid Login
    openGoogle


*** Keywords ***
openGoogle
    Open Browser     ${url}    ${browser}
    Maximize Browser Window
    Sleep    10
    Close Browser
    