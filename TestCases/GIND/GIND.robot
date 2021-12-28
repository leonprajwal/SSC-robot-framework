*** Settings ***
Resource    ../../Resources/Config.robot
Resource    Keyword.robot
Suite Setup      Run Keywords       Delete Screenshots
...     AND      Token Genaration
#...    AND       Empty Directory    ${Screenshot_Output}
Test Setup    Given Launch a ssc Application                 #open a ssc Application       #
Test Teardown    Run Keywords       Error ScreenShot
#...    AND       Close Browser
Suite Teardown    Remove screenshots from Output

*** Test Cases ***

TC1 SSC-GIND-Validate PR code for IN-GIND-032 - Exit
    [Tags]      EDGE-19294
    GIND Start flow
    Wait for text       We're sorry for your inconvenience
    Click Element and Take ScreenShot     ${Exit_Button}
    Wait for text       ${Product_Support}

TC2 SSC-GIND-Validate PR code for IN-GIND-032 - Browse Topics
    [Tags]      EDGE-19293
    GIND Start flow
    Wait for text       We're sorry for your inconvenience
    Click Element and Take ScreenShot     ${BrowseTopics}
    Wait for text       ${Product_Support}

TC3 SSC-GIND-Validate PR code for IN-GIND-010 - Try again later-copper
    [Tags]      EDGE-19297
    GIND Start flow
    Wait for text         Sorry, we are having trouble testing your line at this time
    Click Element and Take ScreenShot     ${Tryagainlater}
    Wait for text       ${ProductSupport_Non_Cust}

TC4 SSC-GIND-Validate PR code for IN-GIND-010 - Chat Now-copper
    [Tags]      EDGE-19297
    GIND Start flow
    Wait for text         Sorry, we are having trouble testing your line at this time
    Click Element and Take ScreenShot     ${ChatNow}
    Wait for text       ${ProductSupport_Non_Cust}

TC5 SSC-GIND-Validate PR code for IN-GIND-014 - Schedule Later
    [Tags]      EDGE-19298
    GIND Start flow
    Wait for text         We found an issue impacting your connection
    Click Element and Take ScreenShot     ${ScheduleLater}
    Wait for text       ${Schedule_Later_Prcode}

TC6 SSC-GIND-Validate PR code for IN-GIND-014 - Schedule Now
    [Tags]      EDGE-19298
    GIND Start flow
    Wait for text         We found an issue impacting your connection
    Click Element and Take ScreenShot     ${ScheduleNow}
    Wait for text       ${Schedule_Now_Prcode}

TC7 SSC-GIND-Validate PR code for IN-GIND-024 - Schedule Later
    [Tags]      EDGE-19295
    GIND Start flow
    Wait for text         We found an issue impacting your connection
    Click Element and Take ScreenShot     ${ScheduleLater}
    Wait for text       ${NoSync_sch_later}


TC8 SSC-GIND-Validate PR code for IN-GIND-024 - Schedule now
    [Tags]      EDGE-19295
    GIND Start flow
    Wait for text         We found an issue impacting your connection
    Click Element and Take ScreenShot     ${ScheduleNow}
    Wait for text       ${NoSync_sch_later}

TC9 SSC-GIND-Validate PR code for IN-GIND-009 - Schedule Later
    [Tags]      EDGE-19296
    GIND Start flow
    Wait for text         Line is unstable. An unstable line may be causing your issues
    Click Element and Take ScreenShot     ${ScheduleNow}
    Wait for text       ${Schedule_Later_Prcode}


TC10 SSC-GIND-Validate PR code for IN-GIND-009 - Schedule Now
    [Tags]      EDGE-19296
    GIND Start flow
    Wait for text         Line is unstable. An unstable line may be causing your issues
    Click Element and Take ScreenShot     ${ScheduleLater}
    Wait for text       ${Schedule_Now_Prcode}

TC11 SSC-GIND-Validate PR code for IN-GIND-015 - Try again later
    [Tags]      EDGE-19300
    GIND Start flow
    Wait for text         We found an issue that might be impacting your service
    Click Element and Take ScreenShot     ${Tryagainlater}
    Wait for text       ${Product_Support_noSync}

TC12 SSC-GIND-Validate PR code for IN-GIND-015 - Chat Now
    [Tags]      EDGE-19300
    GIND Start flow
    Wait for text         We found an issue that might be impacting your service
    Click Element and Take ScreenShot     ${ChatNow}
    Wait for text       ${Product_Support_noSync}