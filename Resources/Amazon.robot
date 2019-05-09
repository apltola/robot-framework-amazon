*** Settings ***
Resource  ./PO/LandingPage.robot
Resource  ./PO/TopNav.robot
Resource  ./PO/SearchResults.robot
Resource  ./PO/Product.robot
Library  SeleniumLibrary

*** Keywords ***
Search for products
    LandingPage.Load
    LandingPage.Verify page loaded
    TopNav.Search for products
    sleep  2s

Select product from search results
    SearchResults.Click product link
    Product.Verify page loaded

Add product to Cart
    click button  id=add-to-cart-button
    wait until page contains  Proceed to checkout (1 item)

Begin checkout
    click link  Proceed to checkout (1 item)
    page should contain button  id=signInSubmit