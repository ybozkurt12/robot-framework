*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${HOME_PAGE}  https://www.blutv.com
${series_page}  ${HOMEPAGE}/diziler/yerli/sifir-bir-bir-zamanlar-adanada
${click_on_the_section}  $('div[test-id="cardOverlay"]:first').click()
${Go_15_minutes}  try {var iframe = document.getElementById("player-iframe"); var video = iframe.contentWindow.document.getElementsByTagName("video")[0]; } catch (e) { var video = document.getElementsByTagName("video")[0]; } video.currentTime = 900; video.play();  setTimeout(function() {video.pause()}, 2000);
${play_movie}  try {var iframe = document.getElementById("player-iframe"); var video = iframe.contentWindow.document.getElementsByTagName("video")[0]; } catch (e) { var video = document.getElementsByTagName("video")[0]; } video.play();
${go_ahead_check}  css: .remaining-home
*** Keywords ***
go to series
   go to  ${series_page}
   BuiltIn.Sleep  3
click on the section
   Execute Javascript  ${click_on_the_section}
   BuiltIn.Sleep  5
Go_15_minutes
    Execute Javascript   ${Go_15_minutes}
    BuiltIn.Sleep  5
play movie
     Execute Javascript  ${play_movie}
go to homepage2
    go to  ${HOME_PAGE}
    BuiltIn.Sleep  5
keep watching check
    Wait Until Page Contains Element  ${go_ahead_check}
    BuiltIn.Sleep  3