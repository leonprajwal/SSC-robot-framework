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
Test title
    [Tags]    DEBUG
    Provided precondition
    When action
    Then check expectations

*** Keywords ***
Provided precondition
    Setup system under test