*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify product added
    wait until page contains  Proceed to checkout (1 item)

Proceed to checkout
    click link  Proceed to checkout (1 item)