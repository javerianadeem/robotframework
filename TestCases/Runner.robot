*** Settings ***
Library  SeleniumLibrary
Resource  ../TestCases/LoginTest.robot
Resource  ../TestCases/RecruitmentTest.robot

*** Test Cases ***
Runner
    Login Test
    Add Recruitment Candidate