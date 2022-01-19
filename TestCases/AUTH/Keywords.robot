*** Keywords ***

AUTH Start flow
    Sleep   10s
    Click Element and Take ScreenShot     ${Internet}
    Sleep   5s
    Click Element and Take ScreenShot     ${My_Wireless}
    Wait for text       Problem Type: HWIR
    Click Element and Take ScreenShot     ${Continue_Button}
    Wait for text       For your security, we need to confirm that you are authorized to access this account before proceeding


Login Pin
    [Arguments]     ${pin1}     ${pin2}     ${pin3}     ${pin4}
    Input Text      ${pin1_loc}     ${pin1}
    Input Text      ${pin2_loc}     ${pin2}
    Input Text      ${pin3_loc}     ${pin3}
    Input Text      ${pin4_loc}     ${pin4}
    Click Element and Take ScreenShot     ${Submit}