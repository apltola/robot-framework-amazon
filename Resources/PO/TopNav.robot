*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Search for products
    Enter search term
    Submit search

Enter search term
    input text  id=twotabsearchtextbox  Ferrari 458

Submit search
    click button  xpath://div[@class='nav-search-submit nav-sprite']//input[@type='submit']

