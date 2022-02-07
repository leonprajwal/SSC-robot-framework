*** Settings ***
Documentation    NDTC MLT Checks
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
TC1 NDTE to MLT Dispatch
    NDT_MLT prompt 10 flow
    Wait for text    There appears to be a problem with your phone line. We recommend a technician visit.


TC2 NDTE to MLT FAil-Return
     NDT_MLT prompt 10 flow
     Wait for text      Sorry, the test failed to complete
     Click Element and Take ScreenShot        ${RetryTest}
     Wait for text      Preparing to run a line test
     Wait for text      Evaluating Line Test Results

TC3 NDTE to MLT FAil-continue
    NDT_MLT prompt 10 flow
     Wait for text      Sorry, the test failed to complete
     Click Element and Take ScreenShot        ${Continue_1}
     Wait for text      Checking line record
     Wait for text      We recommend you check all your devices and jacks to ensure there is not a wiring issue inside your home and to reset your connection

TC4 NDTE to MLT No issue
     NDT_MLT prompt 10 flow
     Wait for text      The line test has identified there are no issues with your phone line wiring leading to your home.
     Click Element and Take ScreenShot        ${Continue_Button}
     Wait for text      Checking line record
     Wait for text      After reviewing your phone line records, it appears that your phone service is currently active


TC5 NDTE to MLT issue detected
     NDT_MLT prompt 10 flow
     Wait for text     The line test has identified there is an issue with your phone line.
     Click Element and Take ScreenShot        ${Continue_Button}
     Wait for text      Checking line record
