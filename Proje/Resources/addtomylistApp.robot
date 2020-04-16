*** Settings ***
Resource  ./pageObjects/addtomylist.robot

*** Variables ***

${HOME_PAGE}  http://www.blutv.com
*** Keywords ***

other test cases
    go to film
    add to my list
    my watch
    my watch list
    go to homepg
    my watch list on home page
    Logout
    logout control