*** Settings ***
Resource  ./pageObjects/watchseries.robot




*** Keywords ***

movie pages
    go to series
    click on the section
    Go_15_minutes
    play movie
    go to homepage2
    keep watching check