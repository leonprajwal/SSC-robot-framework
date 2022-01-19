*** Settings ***
Resource    ../../Resources/Config.robot
Resource    Keywords.robot
Suite Setup      Run Keywords       Delete Screenshots
...     AND      Token Genaration
#...    AND       Empty Directory    ${Screenshot_Output}
Test Setup    Given open a ssc Application       #
Test Teardown    Run Keywords       Error ScreenShot
...    AND       Close Browser
Suite Teardown    Remove screenshots from Output

*** Test Cases ***

TC1 Auth Successful
    AUTH Start flow
    Login Pin       1   1   1   1
    Wait for text      Thank you. You are authorized to proceed.


TC2 Auth 1st and 2nd Fail -try again
    AUTH Start flow
    Login Pin       1   1   3   1
    Wait for text      Based on the information provided, we are not able to authorize access to this account.
    Click Element and Take ScreenShot     ${Tryagain}

TC3 Auth 1st and 2nd Fail -Exit
    AUTH Start flow
    Login Pin       1   1   3   1
    Wait for text      Based on the information provided, we are not able to authorize access to this account.
    Click Element and Take ScreenShot     ${Exit_Button}

TC4 Auth 3rd Fail -Exit
    AUTH Start flow
    Login Pin       1   1   3   1
    Wait for text      Based on the information provided, we are not able to authorize access to this account.
    Click Element and Take ScreenShot     ${Tryagain}
    Wait for text       For your security, we need to confirm that you are authorized to access this account before proceeding
    Login Pin       1   5  3   1
    Wait for text      Based on the information provided, we are not able to authorize access to this account.
    Click Element and Take ScreenShot     ${Tryagain}
    Wait for text       For your security, we need to confirm that you are authorized to access this account before proceeding
    Login Pin       1   5  2   1
    Wait for text      Based on the information provided, we are not able to authorize access to this account.
    Wait for text      Please have the account holder contact us directly.
    Click Element and Take ScreenShot     ${Exit_Button}