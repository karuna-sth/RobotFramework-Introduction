*** Settings ***
Library    SeleniumLibrary
Library    XML


*** Variables ***
${url}    https://www.google.com
${browser}    chrome


*** Test Cases ***
search
    open browser    ${url}    ${browser}
    input text    name:q    Robot FrameWork
    click button    xpath:/html/body/div[1]/div[3]/form/div[1]/div[1]/div[4]/center/input[1]
    Sleep    2
    clear element text    xpath://*[@id="APjFqb"]
    input text    xpath://*[@id="APjFqb"]    Robocorp
    click button    xpath://*[@id="tsf"]/div[1]/div[1]/div[2]/button
    Sleep    2
    Click Button    locator

    
*** Keywords ***
