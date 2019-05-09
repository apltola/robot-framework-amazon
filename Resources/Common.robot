*** Settings ***
Library  SeleniumLibrary


*** Keywords ***
Insert testing data
    Log  testing data being inserted...

Begin web test
    Open Browser  about:blank  chrome

End web test
    Close Browser

Cleanup testing data
    Log  testing data being cleaned up...