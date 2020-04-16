*** Settings ***

Resource  ../Resources/utils.robot
Resource  ../Resources/homepageApp.robot
Resource  ../Resources/addtomylistApp.robot
Library  SeleniumLibrary
Test Setup  utils.start session
Test Teardown  utils.close session

*** Test Cases ***
second. first step
    homepageApp.go to homepage
    addtomylistApp.other test cases


