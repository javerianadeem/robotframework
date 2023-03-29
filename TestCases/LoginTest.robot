*** Settings ***
Library  SeleniumLibrary
Library  ../DriverFactory/Driver.py
Resource  ../Resources/LoginKeywords.robot

*** Variables ***
${browserName}  Chrome
${url}  https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${driverPath}  Driver.Get Browser With Name  ${browserName}
${username}  Admin
${password}  admin123

*** Keywords ***
Login Test
    Open The Browser  ${url}  ${browserName}  ${driverPath}
    Enter Username  ${username}
    Enter Password  ${password}
    Click Login
    Set Selenium Implicit Wait  10 seconds
    Verify Successful Login
#    Close The Browser