*** Keywords ***

NDT prompt 10 flow
    Sleep    10s
    Click Element and Take ScreenShot     ${Voice}
    Sleep   5s
    Click Element and Take ScreenShot      ${No_Dial_Tune}
    Wait For Text       If you have more than one phone, then check all of them for dial tone.
    Wait for Text       Do you notice no dial tone on all phones, or just on one phone?
    Click Element and Take ScreenShot      ${Nodialtoneonallphones}
    Wait for Text       Do you currently have power at your residence?
    Click Element and Take ScreenShot      ${YesIhavepower}
    Wait for Text       We are about to run a line test that may take 2 minutes or more
    Click Element and Take ScreenShot      ${RunTest}
    Wait For Text       Retrieving line test results
    Sleep     10s

NDT_MLT prompt 10 flow
    Sleep    10s
    Click Element and Take ScreenShot     ${Voice}
    Sleep   5s
    Click Element and Take ScreenShot      ${No_Dial_Tune}
    Wait for Text       Do you notice no dial tone on all phones, or just on one phone?
    Click Element and Take ScreenShot      ${Allphones}
    Wait for Text       Do you currently have power at your residence?
    Click Element and Take ScreenShot      ${Yes}
    Wait for Text       We are about to run a line test that may take 2 minutes or more
    Click Element and Take ScreenShot      ${RunTest}
    Wait For Text       Evaluating Line Test Results
    Sleep     10s

NDT Prompt 23 to Prompt 19 flow
    Sleep  10s
    Wait For Text
    Wait For Text       Has the jack ever worked?
    Click Element and Take ScreenShot      ${Yes}
    Wait For Text       Is this your only jack?
    Click Element and Take ScreenShot      ${Yes}
    Wait FOr Text       There appears to be a problem with your inside wiring or the jack inside your home.
    Wait For Text       We recommend a technician visit.

NDT Prompt_23 - Prompt_24 - Prompt_16 flow
    Sleep  10s
    Wait For Text       Has the jack ever worked?
    Click Element and Take ScreenShot      ${Yes}
    Wait For Text       Is this your only jack?
    Click Element and Take ScreenShot      ${No}
    Wait For Text       Because the issue is isolated to one jack, this indicates that jack is not active.
    Wait For Text       You can chat with an agent to place an order to activate the phone jack.
    Will Chat Later

NDT Prompt 23_Prompt to Prompt 16 flow
    Sleep  10s
    Wait For Text       Has the jack ever worked?
    Click Element and Take ScreenShot      ${No}
    Wait For Text       Because the issue is isolated to one jack, this indicates that jack is not active.
    Wait For Text       You can chat with an agent to place an order to activate the phone jack.
    Will Chat Later

Modem_Wireless
    Wait For Text    Are you connecting to the Troubleshooter using a wireless device, like a cell phone, or are you using your modem’s wireless network?
    Click Element and Take ScreenShot      ${Modem_wireless}
    Wait For Text    The test shows that your line is good.
    Wait For Text    We recommend checking all of your devices and jacks to ensure there is not a wiring issue inside your home, and reset your line.
    Wait For Text    Before providing steps to reset your line, it is important to know unplugging your modem will lose your connection to this Troubleshooter.
    Click Element and Take ScreenShot      ${Continue_Button}

NDT Prompt 20 to Prompt 22
    Sleep   10s
    #Wait For Text     Products on account
    Modem_Wireless
    Wait For Text    Please review all the steps before unplugging any devices to reset your line.
    Click Element and Take ScreenShot      ${Third_radio}
    Click Element and Take ScreenShot      ${Continue}

Cell_Phone_wireless
    Wait For Text    Are you connecting to the Troubleshooter using a wireless device, like a cell phone, or are you using your modem modem’s wireless network?
    Click Element and Take ScreenShot      ${Cell_Phone_wireless}
    Wait For Text    The test shows that your line is good.
    Wait For Text    We recommend checking all of your devices and jacks to ensure there is not a wiring issue inside your home, and reset your line.

NDT Prompt 20 to Prompt 11
    Sleep   10s
    #Wait For Text     Products on account
    Cell_Phone_wireless
    Wait For Text       It is important to try several combinations of jacks and equipment to determine if a specific jack or device is causing the problem.
    Click Element and Take ScreenShot      ${Third_radio}
    Click Element and Take ScreenShot      ${Continue}

NDT Prompt 11 after MLT
    Sleep   10s
    #Wait For Text     Products on account
    Wait For Text    The test shows that your line is good.
    Wait For Text    We recommend checking all of your devices and jacks to ensure there is not a wiring issue inside your home, and reset your line.
    Wait For Text       It is important to try several combinations of jacks and equipment to determine if a specific jack or device is causing the problem.
    Click Element and Take ScreenShot      ${Third_radio}
    Click Element and Take ScreenShot      ${Continue}

NDTE Start flow
    Sleep    10s
    Click Element and Take ScreenShot     ${Voice}
    Sleep   5s
    Click Element and Take ScreenShot      ${No_Dial_Tune}
    Wait for Text       Do you notice no dial tone on all phones, or just on one phone?
    Sleep   5s
    Click Element and Take ScreenShot     ${AllPhones}
    Wait for Text       Do you currently have power at your residence?
    Click Element and Take ScreenShot      ${Yes}
    #Wait For Text       Checking account
    #Wait for text       Checking line record

NDTE TN programmed in switch for Voice
    Sleep   10s
    Wait for Text       After reviewing your phone line records, it appears that your phone service is currently active.
    Wait for Text       Let’s try resetting your phone line to restore dial tone.
    Click Element and Take ScreenShot      ${Continue_Button}
    Modem_Wireless

Will Chat Later
    Click Element and Take ScreenShot      ${WillChatLatertoSchedule}
    Wait For Text      If you have additional questions, you can chat with an agent or browse our list of self-help topics.
    Click Element and Take ScreenShot      ${Exit_Button}

NDTE Will Chat Later prompt 18
    Wait for Text       We recommend you check all your devices and jacks to ensure there is not a wiring issue inside your home and to reset your connection.
    Click Element and Take ScreenShot      ${Theproblemisisolatedtoonejack}
    NDT Prompt_23 - Prompt_24 - Prompt_16 flow
    Will Chat Later

NDTE Will Chat Later prompt 17
    Wait for Text       We recommend you check all your devices and jacks to ensure there is not a wiring issue inside your home and to reset your connection.
    Click Element and Take ScreenShot      ${Theproblemisisolatedtoonejack}
    NDT Prompt 23_Prompt to Prompt 16 flow
    Wait For Text       If you have additional questions, you can chat with an agent, or browse our list of self-help topics.
    Click Element and Take ScreenShot      ${Exit_Button}

