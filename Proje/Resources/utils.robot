*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
start session
    open browser  about:blank  chrome
    Maximize Browser Window

close session
    close browser


