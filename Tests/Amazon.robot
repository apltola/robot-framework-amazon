*** Settings ***
Documentation  Some robot testing amazon
Resource  ../Resources/Amazon.robot
Resource  ../Resources/Common.robot
Suite Setup  Insert testing data
Test Setup  Common.Begin web test
Test Teardown  Common.End web test
Suite Teardown  Cleanup testing data

*** Variables ***

*** Test Cases ***
User must sign in to check out
    [Documentation]  user must sign in to check out
    [Tags]  Smoke
    Amazon.Search for products
    Amazon.Select product from search results
    Amazon.Add product to Cart
    Amazon.Begin checkout