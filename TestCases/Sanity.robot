*** Settings ***
Resource    ../Resources/Config.robot
Suite Setup      Run Keywords       Delete Screenshots
...     AND      Token Genaration
#Test Setup    Given open a ssc Application
Test Teardown    Error ScreenShot
Suite Teardown   Run Keywords    Remove screenshots from Output
#...    AND       Close Browser


*** Test Cases ***
#Validate TN Type and Run testcase
#    ${Tn_Type}=   Check the TN type
#    Run Keyword IF    '${Tn_Type}'=='L-Q'     Sanity on Voice Flow CRIS
#    ...    ELSE IF    '${Tn_Type}'=='L-CTL'    Sanity on Voice Flow Ensable
#
#*** Keywords ***
OPEN SSC
    open a ssc Application

Sanity on Voice Flow CRIS
    [Tags]    Santiy Check on Noise
    When I Hear a noise while using phone -Cris
    #Then I Reschedule and cancel appointment
#    Reschedule a appointment
#    Cancel the appointment

Santiy on CCO Cris
    When I am not able to call out-cris
    Then I Reschedule and cancel appointment

Santiy on CCO Ensable
    When I am not able to call out-ensable
    Then I Reschedule and cancel appointment

Sanity on Voice Flow Ensable
    [Tags]    Santiy Check on Noise
    When I Hear a noise while using phone - ensable
    #Then I Reschedule and cancel appointment

Sanity on NDT Flow Cris
    When I have no dial tone
    Then I Reschedule and cancel appointment

Sanity on Internet Flow
    When My internet isn't connected
    Then I Reschedule and cancel appointment

