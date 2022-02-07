*** Settings ***
Documentation    NOLE MLT Checks
Resource    ../../Resources/Config.robot

Suite Setup      Run Keywords       Delete Screenshots
...     AND      Token Genaration
Test Setup    Given open a ssc Application       # Launch a ssc Application
Test Teardown    Run Keywords       Error ScreenShot
#...    AND       Close Browser
Suite Teardown   Run Keywords    Remove screenshots from Output
#...    AND       Empty Directory    ${Screenshot_Output}
*** Keywords ***

Mlt Start flow
    Sleep    10s
    Click Element and Take ScreenShot     ${Voice}
    Sleep   5s
    Click Element and Take ScreenShot      ${Noise}
    Wait for Text       Is the noise on the phone line heard on long distance calls only?
    Click Element and Take ScreenShot      ${NoNoiseallcalls}
    Wait for Text       Do you hear a dial tone or just noise?
    Click Element and Take ScreenShot      ${Dialtonewithnoise}
    Wait for Text       We are about to run a line test that may take 2 minutes or more
    Click Element and Take ScreenShot      ${RunTest}
    Sleep    10s

*** Test Cases ***
TC1 NOLE to MLT Dispatch
    Mlt Start flow
    Wait for text    There appears to be a problem with your phone line. We recommend a technician visit.


TC2 NOLE to MLT FAil-Return
     Mlt Start flow
     Wait for text      Sorry, the test failed to complete
     Click Element and Take ScreenShot        ${RetryTest}
     Wait for text      Preparing to run a line test
     Wait for text      Evaluating Line Test Results

TC3 NOLE to MLT FAil-continue
    Mlt Start flow
     Wait for text      Sorry, the test failed to complete
     Click Element and Take ScreenShot        ${Continue_1}
     Wait for text      Checking line record
     Wait for text      We recommend you check all your devices and jacks to ensure there is not a wiring issue inside your home and to reset your connection

TC4 NOLE to MLT No issue
     Mlt Start flow
     Wait for text      The line test has identified there are no issues with your phone line wiring leading to your home.
     Click Element and Take ScreenShot        ${Continue_Button}
     Wait for text      Checking line record
     Wait for text      After reviewing your phone line records, it appears that your phone service is currently active


TC5 NOLE to MLT issue detected
     Mlt Start flow
     Wait for text     The line test has identified there is an issue with your phone line.
     Click Element and Take ScreenShot        ${Continue_Button}
     Wait for text      Checking line record
