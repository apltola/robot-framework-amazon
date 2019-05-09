*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Load
    Go To  https://amazon.com

Verify page loaded
    wait until page contains  Your Amazon.com