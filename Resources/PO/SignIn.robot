*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify page loaded
    page should contain button  id=signInSubmit