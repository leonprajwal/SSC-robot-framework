*** Settings ***
Documentation    NDTC New prompts
Resource    ../../Resources/Config.robot
Resource    Keyword.robot
Suite Setup      Run Keywords       Delete Screenshots
...     AND      Token Genaration
Test Setup    Given open a ssc Application       # Launch a ssc Application
Test Teardown    Run Keywords       Error ScreenShot
...    AND       Close Browser
Suite Teardown   Run Keywords    Remove screenshots from Output
#...    AND       Empty Directory    ${Screenshot_Output}

*** Test Cases ***
TC1 NDTC Prompt Verify
    NDT prompt 10 flow
    NDT Prompt 20 to Prompt 22
    NDT Prompt 23_Prompt to Prompt 16 flow

TC2 NDTC Prompt Verify
    NDT prompt 10 flow
    NDT Prompt 20 to Prompt 22
    NDT Prompt_23 - Prompt_24 - Prompt_16 flow

TC3 NDTC Prompt Verify
    NDT prompt 10 flow
    NDT Prompt 20 to Prompt 22
    NDT Prompt 23 to Prompt 19 flow

TC4 NDTC Prompt Verify
    NDT prompt 10 flow
    NDT Prompt 20 to Prompt 11
    NDT Prompt 23_Prompt to Prompt 16 flow

TC5 NDTC Prompt Verify
    NDT prompt 10 flow
    NDT Prompt 20 to Prompt 11
    NDT Prompt_23 - Prompt_24 - Prompt_16 flow

TC6 NDTC Prompt Verify
    NDT prompt 10 flow
    NDT Prompt 20 to Prompt 11
    NDT Prompt 23 to Prompt 19 flow


TC7 NDTC Prompt Verify
    NDT prompt 10 flow
    NDT Prompt 11 after MLT
    NDT Prompt 23_Prompt to Prompt 16 flow

TC8 NDTC Prompt Verify
    NDT prompt 10 flow
    NDT Prompt 11 after MLT
    NDT Prompt_23 - Prompt_24 - Prompt_16 flow

TC9 NDTC Prompt Verify
    NDT prompt 10 flow
    NDT Prompt 11 after MLT
    NDT Prompt 23 to Prompt 19 flow
