*** Settings ***
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

TC1 CBCC
    CBCC Start flow
    CBCC Call Forwarding Fail
    Click Element and Take ScreenShot     ${Exit_Button}
    Wait for text       ${Product_Support}

TC2 CBCC
    CBCC Start flow
    CBCC Call Forwarding Fail
    Click Element and Take ScreenShot     ${BrowseTopics}
    Wait for text       ${Product_Support}

TC3 CBCC
    CBCC Start flow
    CBCC Call Forwarding Activated
    Click Element and Take ScreenShot     ${ChatNow}
    Wait for text       ${Issue_Resolved}

TC4 CBCC
    CBCC Start flow
    CBCC Call Forwarding Activated
    Click Element and Take ScreenShot     ${BrowseTopics}
    Wait for text       ${Issue_Resolved}


TC5 CBCC
    CBCC Start flow
    CBCC Call Forwarding not Activated and AIN present
    Click Element and Take ScreenShot     ${BrowseTopics}
    Wait for text       ${Issue_Resolved}

TC6 CBCC
    CBCC Start flow
    CBCC Call Forwarding not Activated and AIN present
    Click Element and Take ScreenShot     ${ChatNow}
    Wait for text       ${Issue_Resolved}

TC7 CBCC
    CBCC Start flow
    CBCC Call Forwarding not Activated and AIN not present
    CBCC Recording Call Curfew
    Click Element and Take ScreenShot     ${BrowseTopics}
    Wait for text       ${Product_calling}

TC8 CBCC
    CBCC Start flow
    CBCC Call Forwarding not Activated and AIN not present
    CBCC Recording Call Curfew
    Click Element and Take ScreenShot     ${Exit_Button}
    Wait for text       ${Product_calling}

TC9 CBCC
    CBCC Start flow
    CBCC Call Forwarding not Activated and AIN not present
    CBCC Recording Security Screen
    Click Element and Take ScreenShot     ${BrowseTopics}
    Wait for text       ${Product_calling}

TC10 CBCC
    CBCC Start flow
    CBCC Call Forwarding not Activated and AIN not present
    CBCC Recording Security Screen
    Click Element and Take ScreenShot     ${Exit_Button}
    Wait for text       ${Product_calling}

TC11 CBCC
    CBCC Start flow
    CBCC Call Forwarding not Activated and AIN not present
    CBCC Recording No Solicitation
    Click Element and Take ScreenShot     ${BrowseTopics}
    Wait for text       ${Product_calling}

TC12 CBCC
    CBCC Start flow
    CBCC Call Forwarding not Activated and AIN not present
    CBCC Recording No Solicitation
    Click Element and Take ScreenShot     ${Exit_Button}
    Wait for text       ${Product_calling}

TC13 CBCC
    CBCC Start flow
    CBCC Call Forwarding not Activated and AIN not present
    CBCC Recording Caller ID Privacy +
    Click Element and Take ScreenShot     ${BrowseTopics}
    Wait for text       ${Product_calling}

TC14 CBCC
    CBCC Start flow
    CBCC Call Forwarding not Activated and AIN not present
    CBCC Recording Caller ID Privacy +
    Click Element and Take ScreenShot     ${Exit_Button}
    Wait for text       ${Product_calling}

TC15 CBCC
    CBCC Start flow
    CBCC Call Forwarding not Activated and AIN not present
    CBCC Recording other
    Click Element and Take ScreenShot     ${BrowseTopics}
    Wait for text       ${Product_calling}

TC16 CBCC
    CBCC Start flow
    CBCC Call Forwarding not Activated and AIN not present
    CBCC Recording other
   # Click Element and Take ScreenShot     ${Exit_Button}
    #Wait for text       ${Product_calling}
