*** Settings ***

Resource  ../Resources/utils.robot
Resource  ../Resources/homepageApp.robot
Resource  ../Resources/watchseriesApp.robot
Library  SeleniumLibrary
Test Setup  utils.start session
Test Teardown  utils.close session

*** Test Cases ***
first step
    homepageApp.go to homepage
    watchseriesApp.movie pages





