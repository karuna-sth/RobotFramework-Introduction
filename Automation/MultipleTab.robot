*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
testMultipleTab
    Open Browser    https://robotframework.org    chrome
    Maximize Browser Window
    Set Selenium Speed    1seconds
    Click Link    xpath://a[contains(text(),'☕ coffee cup')]
    Switch Window    Robot Framework
    Close Window