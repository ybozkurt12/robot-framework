*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${HOME_PAGE}  http://www.blutv.com
${film_url}  ${HOMEPAGE}/filmler/yerli/aidiyet
${add_to_my_list}  css:  [test-id='addFavoriteButton']
${my_watch_list}  ${HOMEPAGE}/izleme-listem
${watch_list}  css:  div[role='button']
${home_watch_list}  css: div.favorites-home h2
${logout_hover}   class:  UserMenu_avatar_1pGJY
${logout_click}  $('a.UserMenu_logout_1c6Cr')[0].click()
${logout_control}  css:  a[href='/giris']



*** Keywords ***
go to film
    go to  ${film_url}
    BuiltIn.Sleep  5
add to my list
    click element  ${add_to_my_list}
    BuiltIn.Sleep  5
my watch
   go to   ${my_watch_list}
   BuiltIn.Sleep  5

my watch list
    Wait Until Element Is Visible  ${watch_list}
go to homepg
    go to  ${HOME_PAGE}
    BuiltIn.Sleep  5
my watch list on home page
    Wait Until Element Is Visible  ${home_watch_list}
    BuiltIn.Sleep  3
Logout
   Mouse Over  ${logout_hover}
   BuiltIn.Sleep  3
   Execute Javascript  ${logout_click}
   BuiltIn.Sleep  5

logout control
    Wait Until Element Is Visible  ${logout_control}
    BuiltIn.Sleep  3

