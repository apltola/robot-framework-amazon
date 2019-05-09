*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Load
    Go To  ${START_URL}

Verify page loaded
    wait until page contains  Your Amazon.com