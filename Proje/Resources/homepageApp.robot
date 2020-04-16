*** Settings ***
Resource  ./pageObjects/homepage.robot

*** Variables ***
${HOME_PAGE}  http://www.blutv.com
*** Keywords ***

go to homepage
    homepage.go to app
    homepage.user name
    homepage.wait until css is visible
    homepage.email
    homepage.wait until css is visible
    homepage.sifre
    homepage.wait until css is visible
    homepage.sign up
    homepage.go to app
    homepage.user control

