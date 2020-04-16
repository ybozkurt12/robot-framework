*** Settings ***
Library  SeleniumLibrary

*** Variables ***

${HOME_PAGE}  http://www.blutv.com
${user_name}  id=registerWidget_name
${selector_kontrol}  css: a[href='/giris']
${e-mail}  css: ul input
${sifre}  id=registerWidget_password
${sign_up}  css: .jsx-3699404576 .ant-btn
${user_control}  css: .UserMenu_shortName_RQK5l


*** Keywords ***
go to app
   go to  ${HOME_PAGE}
   BuiltIn.Sleep  1
user name
   input text   ${user_name}   yunusemretest bozkrt
email
   input text  ${e-mail}  y.e.bozkurt@test.com
   BuiltIn.Sleep  1
sifre
   input text  ${sifre}   134567tr
   BuiltIn.Sleep  1
Sign up
   click element  ${sign_up}
   BuiltIn.Sleep  5
wait until css is visible
   Wait Until Element Is Visible  ${selector_kontrol}
   BuiltIn.Sleep  3
user control
   Wait Until Element Is Visible  ${user_control}
   BuiltIn.Sleep  3



