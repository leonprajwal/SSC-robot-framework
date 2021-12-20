
*** Keywords ***

HCKP start flow
    Voice Flow all calls - cris
    Click Element and Take ScreenShot       ${Cordlessandcordedphones}
    Wait for text      How would you best describe the noise?
    Click Element and Take ScreenShot       ${Hear other voices}
    Click Element and Take ScreenShot       ${Continue}
    Wait for text     Retrieving line test results
    Sleep     1min
    Wait for text     You can try running the test again, or continue with additional troubleshooting steps
    Sleep    10s
    Click Element and Take ScreenShot       ${Continue_1}
    Wait for text     Is your internet also not working?
    Click Element and Take ScreenShot       ${Internetisalsonotworking}
    Wait for text      What devices are you using?



HCKP Centrury Link Modem
    [Arguments]    ${Modem}
    Click Element and Take ScreenShot       ${Modem}
    Click Element and Take ScreenShot       ${Continue_Button}
    Wait for text      Check all cords and cables for damage. Also check to make sure both ends of the cables are firmly plugged in.
    Capture and compare screenshot    ${Router_Img}     ${Screenshot_Output}     ${HCKP_Screenshot_Master}      router.png
    Capture and compare screenshot    ${computer_modem_img}     ${Screenshot_Output}     ${HCKP_Screenshot_Master}      Comp_modem.png
    Capture and compare screenshot    ${modem_img}     ${Screenshot_Output}     ${HCKP_Screenshot_Master}      modem.png

HCKP Centrury Link Yes flow
     Wait For Text      After checking your connections, can you access the internet?
     Click Element and Take ScreenShot          ${Yes}
      Wait For Text       Do you have more issues to troubleshoot?

HCKP Centrury Link No flow
     [Arguments]        ${Input}        ${HCNB}=${Yes}
     Wait For Text      After checking your connections, can you access the internet?
     Click Element and Take ScreenShot          ${No}
     Wait For Text      Check to verify that the Ethernet light on the modem is ON or flashing green.
     Capture and compare screenshot    ${modem_Light_Img}     ${Screenshot_Output}     ${HCKP_Screenshot_Master}      modem_Light.png
     Click Element and Take ScreenShot      ${OFF}
      Wait For Text      Is the Ethernet light on your modem on and/or flashing?
     Click Element and Take ScreenShot     ${Yes}
     Wait For Text       Are you able to browse the Internet?
     Click Element and Take ScreenShot     ${Input}
     Run Keyword IF    '${Input}'=='${NO}'    HCNB browse Flow    ${HCNB}
     ...   ELSE      Wait For Text       Do you have more issues to troubleshoot?

HCKP Centrury Link Flashing Green
     [Arguments]     ${Input}
     Wait For Text      After checking your connections, can you access the internet?
     Click Element and Take ScreenShot          ${No}
     Wait For Text      Check to verify that the Ethernet light on the modem is ON or flashing green.
     Capture and compare screenshot    ${modem_Light_Img}     ${Screenshot_Output}     ${HCKP_Screenshot_Master}      modem_Light.png
     Click Element and Take ScreenShot      ${ONorFlashinggreen}
     HCNB browse Flow       ${Input}

HCNB browse Flow
     [Arguments]        ${Input}
     Run Keyword IF    '${Input}'=='${Yes}'     HCNB can Browse Flow
     ...  ELSE      HCNB unable to browse Flow

HCNB unable to browse Flow
     #Wait For Text      Getting
     Wait For Text      Are you able to browse the Internet?
     Click Element and Take ScreenShot     ${NO_radio}
     Click Element and Take ScreenShot     ${Continue}
     Wait For Text          If you have additional questions, you can chat with an agent,or browse our list of self help topics

HCNB can Browse Flow
     #Wait For Text      Getting
     Wait For Text      Are you able to browse the Internet?
     Click Element and Take ScreenShot     ${Yes_radio}
     Click Element and Take ScreenShot     ${Continue}
     Wait For Text      Your service is now active and working.

HCKP Centrury Link Browse internet after connecting
     Wait For Text      After checking your connections, can you access the internet?
     Click Element and Take ScreenShot          ${No}
     Wait For Text      Check to verify that the Ethernet light on the modem is ON or flashing green.
     Capture and compare screenshot    ${modem_Light_Img}     ${Screenshot_Output}     ${HCKP_Screenshot_Master}      modem_Light.png
     Click Element and Take ScreenShot      ${OFF}
     Wait For Text      Is the Ethernet light on your modem on and/or flashing?
     Click Element and Take ScreenShot      ${No}

HCKP Centrury Link have another device Ethernet light
     [Arguments]   ${Input}
     Wait For Text      Do you have another device that you can connect to the Ethernet cable?
     Click Element and Take ScreenShot     ${Input}



Modem Light
    [Arguments]    ${Input}    ${HCNB}=${Yes}
     Wait For Text      After connecting, is the Ethernet light on your modem on and/or flashing?
     Click Element and Take ScreenShot     ${Input}
     Run Keyword If  '${Input}'=='${No}'    HCNB browse Flow   ${HCNB}
     ...    ELSE       Wait For Text       Do you have more issues to troubleshoot?

HCKP Centrury Link Dont have another device
     [Arguments]        ${Input}     ${HCNB}=${Yes}
     Wait For Text      Do you have another device that you can connect to the Ethernet cable?
     Click Element and Take ScreenShot     ${No}
     Wait For Text      Do you have a different Ethernet cable that you can connect between the computer and the modem?
     Click Element and Take ScreenShot     ${No}
     Wait For Text      Would you like to try connecting to the CenturyLink modem via wireless?
     Click Element and Take ScreenShot     ${Input}
     Run Keyword If       '${Input}'=='${No}'     HCNB browse Flow  ${HCNB}

HCKP Have differernt cable
     Wait For Text      Do you have a different Ethernet cable that you can connect between the computer and the modem?
     Click Element and Take ScreenShot     ${Yes}

HCKP Wireless can browse
    Wait for text      Problem Type: HWCB
    Click Element and Take ScreenShot      ${Continue_Button}
    Wait for text     Checking for modem response
    Wait for text     Are you able to connect to the Internet?
    Click Element and Take ScreenShot     ${Yes_radio}
    Click Element and Take ScreenShot       ${Continue}
    Wait for text     Problem Type: HWCF
    Click Element and Take ScreenShot       ${Continue_Button}
    Wait for text     Modem Test in Progress
    Wait for text     You can chat with an agent

HCKP Wireless can't browse
    Wait for text      Problem Type: HWCB
    Click Element and Take ScreenShot      ${Continue_Button}
    Wait for text     Checking for modem response
    Wait for text     Are you able to connect to the Internet?
    Click Element and Take ScreenShot     ${No_radio}
    Click Element and Take ScreenShot       ${Continue}
    Wait for text    please chat with an agent for assistance


HCKP Non Centrury Link
    Wait For Text      After checking your connections, can you access the internet?
    Click Element and Take ScreenShot          ${No}
    Wait for text      It appears like there is an issue with your third party equipment that is not supported by CenturyLink.


