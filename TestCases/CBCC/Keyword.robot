*** Variables ***
${testcase}         CBCC
${Product_Support}      Voice>Cannot Receive Calls>Transfer/Refer>Tier 1.0 HSI/Product Support
${Issue_Resolved}       Voice>Cannot Receive Calls>Issue Resolved
${Product_calling}      Voice>Calling Features>Transfer/Refer>Tier 1.0 HSI/Product Support
*** Keywords ***

CBCC Start flow
     Sleep    5s
    Click Element and Take ScreenShot     ${Voice}
    Sleep   5s
    Click Element and Take ScreenShot      ${Not_Reciving}
    Wait for text    Are you able to make calls?
    Click Element and Take ScreenShot      ${YesIcanmakecalls}
    Wait for Text       Are you unable to call out on all of your phones or just one?
    Sleep    10s
    Click Element and Take ScreenShot       ${AllPhone}
    Sleep   10s

CBCC Call Forwarding Fail
    Wait for Text      There was a problem retrieving your line records.


CBCC Call Forwarding Activated
    Wait for Text   Call forwarding is active on your phone line
    Click Element and Take ScreenShot      ${Continue_Button}
    Wait for Text   If you have additional questions, you can chat with an agent


CBCC Call Forwarding not Activated and AIN present
    Wait for Text        You can contact our update center by dialing
    Click Element and Take ScreenShot      ${Continue_Button}
    Wait for Text   If you have additional questions, you can chat with an agent


CBCC Call Forwarding not Activated and AIN not present
    Wait for text       Are you not receiving any calls or only some calls?
    Click Element and Take ScreenShot     ${Allcalls}
    Wait for Text       Can you call the phone number from a different phone line, like a cell phone, to confirm if a recording is being played?
    Click Element and Take ScreenShot     ${Yes}
    Wait for Text       What did you hear when you called?
    Click Element and Take ScreenShot     ${First_radio}
    Click Element and Take ScreenShot     ${Continue}

CBCC Recording Call Curfew
    Wait for text          Select the message that you hear on the recording
    Click Element and Take ScreenShot     ${First_radio}
    Click Element and Take ScreenShot     ${Continue}
    Wait for Text       Call curfew provides the ability to block incoming and outgoing calls
    Click Element and Take ScreenShot     ${Unabletochangeinupdatecenter}
    Wait for Text       The problem appears to be with your phone line and will require additional investigation.


CBCC Recording Security Screen
    Wait for text          Select the message that you hear on the recording
    Click Element and Take ScreenShot     ${Second_radio}
    Click Element and Take ScreenShot     ${Continue}
    Wait for text      Security screen works in conjunction with caller ID
    Click Element and Take ScreenShot     ${Unabletochangeinupdatecenter}
    Wait for Text       The problem appears to be with your phone line and will require additional investigation.

CBCC Recording No Solicitation
    Wait for text          Select the message that you hear on the recording
    Click Element and Take ScreenShot     ${Third_radio}
    Click Element and Take ScreenShot     ${Continue}
    Wait for text      No solicitation is set up to deter sales and telemarketing calls
    Click Element and Take ScreenShot     ${Unabletochangeinupdatecenter}
    Wait for Text       The problem appears to be with your phone line and will require additional investigation.

CBCC Recording Caller ID Privacy +
    Wait for text          Select the message that you hear on the recording
    Click Element and Take ScreenShot     ${Fourth_radio}
    Click Element and Take ScreenShot     ${Continue}
    Wait for text      Caller ID with privacy plus allows screening of incoming caller ID calls that do not contain caller ID information
    Click Element and Take ScreenShot     ${Unabletochangeinupdatecenter}
    Wait for Text       The problem appears to be with your phone line and will require additional investigation.


CBCC Recording other
    Wait for text          Select the message that you hear on the recording
    Click Element and Take ScreenShot     ${Sixth_radio}
    #Click Element and Take ScreenShot     ${Continue}
    #Wait for Text       The problem appears to be with your phone line and will require

