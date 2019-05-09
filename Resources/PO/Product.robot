*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify page loaded
    wait until page contains  Compare with similar items

Add to cart
    click button  id=add-to-cart-button