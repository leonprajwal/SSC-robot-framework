*** Settings ***
Documentation    NDTE New prompts
Resource    ../../Resources/Config.robot
Resource    Keyword.robot
Suite Setup      Run Keywords       Delete Screenshots
...     AND      Token Genaration
Test Setup    Given open a ssc Application       # Launch a ssc Application
Test Teardown    Run Keywords       Error ScreenShot
#...    AND       Close Browser
Suite Teardown   Run Keywords    Remove screenshots from Output
#...    AND       Empty Directory    ${Screenshot_Output}

*** Test Cases ***
TC1 NDTE Prompt Verify
    NDTE Start flow
    NDTE TN programmed in switch for Voice

TC2 NDTE Prompt Verify
    NDTE Start flow
    NDTE Will Chat Later prompt 18

TC3 NDTE Prompt Verify
    NDTE Start flow
    NDTE Will Chat Later prompt 17