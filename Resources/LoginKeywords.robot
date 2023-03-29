*** Settings ***
Library  SeleniumLibrary
Variables  ../PageObjects/Locators.py

*** Variables ***


*** Keywords ***
Open The Browser
    [Arguments]  ${url}  ${browserName}  ${driver_path}
    Open Browser  ${url}  ${browserName}  executablepath=${driver_path}
    Maximize Browser Window
    Set Selenium Implicit Wait  10 seconds

Enter Username
    [Arguments]  ${value}
    Input Text  ${loginUsernameLocator}  ${value}

Enter Password
    [Arguments]  ${value}
    Input Text  ${loginPasswordLocator}  ${value}

Click Login
    Click Element  ${loginButtonLocator}

Verify Successful Login
    Element Should Be Visible  ${profileDropdown}

Close The Browser
    Close All Browsers
