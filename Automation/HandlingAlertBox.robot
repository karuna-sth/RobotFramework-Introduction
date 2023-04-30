*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***
alert
    Set Selenium Speed    1seconds
    Open Browser    https://testautomationpractice.blogspot.com/    chrome
    Click Button    xpath://button[@onclick='myFunction()']
    # press ok button on alert
    Handle Alert    accept
    Click Button    xpath://button[@onclick='myFunction()']
    # press cancel button on alert
    Handle Alert    dismiss
    # to verify the content of alert 
    Alert Should Be Present    Press a button!
    Close Browser