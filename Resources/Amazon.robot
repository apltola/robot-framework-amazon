*** Settings ***
Resource  ./PO/LandingPage.robot
Resource  ./PO/TopNav.robot
Resource  ./PO/SearchResults.robot
Resource  ./PO/Product.robot
Resource  ./PO/Cartti.robot
Resource  ./PO/SignIn.robot
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
    Product.Add to cart
    Cartti.Verify product added

Begin checkout
    Cartti.Proceed to checkout
    SignIn.Verify page loaded