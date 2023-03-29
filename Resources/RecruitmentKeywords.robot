*** Settings ***
Library  SeleniumLibrary
Variables  ../PageObjects/Locators.py

*** Variables ***


*** Keywords ***

Click On Recruitment
    Click Element  ${recruitmentLinkLocator}
    Sleep  5

Click On Add Button
    Click Element  ${recruitmentAddButton}
    Sleep  5