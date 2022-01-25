
*** Keywords ***
Check the TN type
    ${Auth}=     create list        ${username_api}    ${Pwd_api}
    Create Session    mysession     ${Base_Url}    auth=${Auth}
    ${response}=     GET On Session    mysession   ${Relative_Url}
    ${Acc_info}=    Get From Dictionary      ${response.json()}     accountInformation
    ${Tn_Type}=    Get From Dictionary      ${Acc_info}     legacyDispatchTerritory
    [Return]  ${Tn_Type}

open Chrome browser
    ${options}=    Evaluate  sys.modules['selenium.webdriver'].ChromeOptions()  sys, selenium.webdriver
    Call Method    ${options}    add_argument    incognito
    Create WebDriver    ${BROWSER}    executable_path=${Chrome_DIR}    chrome_options=${options}
    Maximize Browser Window

Verify the Opening Content
    Wait for text      Data Line Test in Progress
    Wait for text     Checking services
    Wait for text     Checking for pending repair tickets
    Wait for text     Checking for outages

open a ssc Application
   Launch a ssc Application
   Wait For Text       select the type of issue you are having
   #Wait for text    Which service issue are you having?

Launch a ssc Application
   open Chrome browser
   go to     ${SscTokenURL}${tokenGen}
   #Verify the Opening Content

Token Genaration
    open Chrome browser
    go to     ${TokenGenURL}
    Input Text    ${Subcriber_num}      ${Number}
    Sleep    5s
    Select From List By Value      ${Type_Token}       test
    Sleep    5s
    Click Element and Take ScreenShot     ${GenToken}
    Sleep   2s
    ${token}    Get text    ${copy_Token}
    Set Global Variable    ${tokenGen}      ${token}
    Close Browser

Schedule a technician for Ensable
    Wait for text      Send a technician to identify the problem, which might result in an additional charge
    Click Element and Take ScreenShot     ${Addplannowandscheduletechnician}
#    Wait for text      you can continue to request a technician visit and accept a possible Trouble Isolation
#    Click Element and Take ScreenShot     ${Schedulenowandacceptpossiblecharges}
    Wait for text       Processing offer
    Wait for Text       We bill for services one month in advance
    Click Element and Take ScreenShot      ${Iacceptquotetoaddplan}
    Wait for Text   Processing request

Schedule a technician for onlyphone cris
    Wait for text      Send a technician to identify the problem, which might result in an additional charge
    Click Element and Take ScreenShot     ${Addplannowandscheduletechnician}
    Wait for text      you can continue to request a technician visit and accept a possible Trouble Isolation Charge
    Sleep   10s
    Click Element and Take ScreenShot     ${Schedulenowandacceptpossiblecharges}



Schedule a Appointment

    #${Tn_Type}=       Check the TN type
    #Run Keyword IF    '${Tn_Type}'=='L-CTL' Schedule a technician for Ensable
#    Schedule a technician for onlyphone cris
    Wait for text     technician visit
    Sleep    5s
    Click Element and Take ScreenShot     ${Continue_Button}
    Wait for text       Checking history
    Wait for text       Finding appointment
    Yes Schedule a appointment

Yes Schedule a appointment
    Wait for text       Would you like to schedule this appointment time?
    Sleep  10s
    Click Element and Take ScreenShot     ${YesSchedule}
    Wait for text       Is there anything that would inhibit our technician from accessing the Network Interface Device, also called a NID?
    Click Element and Take ScreenShot     ${YesthereisclearaccesstotheNID}
    Wait for text       Is there a COVID health or safety related issue we need to be aware of before we continue?
    Click Element and Take ScreenShot     ${Yes}
    Wait for text       Thank you so much for sharing that information.
    Click Element and Take ScreenShot     ${Iunderstandandagree}
    Wait for text       Do you have an alternate phone number if our technician has additional questions or information about your repair?
    Input text      ${contactPhoneNumber}     ${ContactNumber}
    Input Text      ${contactName}            ${Name}
    Click Element and Take ScreenShot      ${Continue_Button}
    Wait for text       Before submitting the repair request, let’s review what we know
    Click Element and Take ScreenShot      ${Thisiscorrectschedule}
    Wait for text       Submitting ticket
    Wait for text       Help is on the way
    Sleep   40s

Reschedule a appointment
    Wait for text       Your repair appointment is scheduled for
    Sleep    5s
    Click Element and Take ScreenShot     ${Reschedule}
     Wait for text       Finding Appointment
    Wait for text       Would you like to schedule this appointment time?
    ${Date}=   get Text         ${date}
    Click Element and Take ScreenShot     ${YesSchedule}
     Wait for text       Please confirm the new appointment will be scheduled on ${Date}
     Click Element and Take ScreenShot     ${Confirm}
     Wait for text      Is the best number to reach you at
     Click Element and Take ScreenShot     ${Yessubmitnewappointment}
     Wait for text      Submitting Request
     Wait for text      Your repair appointment has been rescheduled
     Click Element and Take ScreenShot     ${Continue_Button}
     Wait for text      If you have additional questions, you can chat with an agent
     Click Element and Take ScreenShot     ${Exit_Button}
     Wait for text      Ticket Creation Type :LOG_CALL
     Click Element and Take ScreenShot     ${Continue_Button}

     #Wait for text      Closing Session
     Wait for text      Thank you for using
     Sleep      10s

Error ScreenShot
    Run Keyword If Test Failed    Take Screenshot     ${EXECDIR}/Failed_ScreenShot/Error

Remove screenshots from Output
    Remove Files   Output\\selenium-screenshot-*.png

Delete Screenshots
    Empty Directory     Failed_ScreenShot
    Empty Directory     ScreenShots

Capture and compare screenshot
    [Arguments]         ${Element}       ${Output}        ${master}     ${Imgname}
     Capture Element Screenshot      ${Element}        ${Output}\\${Imgname}
    ${Img}=     compare images and return   ${Output}\\${Imgname}           ${master}\\${Imgname}
    Run Keyword If    '${Img}'=='False'         Fail     Image Didnot Match

Click Element and Take ScreenShot
    [Arguments]     ${Element}
    ${But_Value}=    Get Value     ${Element}
    ${But_Text}=    Get Text     ${Element}
    Log to console    ${But_Text}
    Log to console    ${But_Value}
    #${testcase}=    Get Testcase Name
    Take Screenshot     ${EXECDIR}/ScreenShots/${testcase}click
    Click Element   ${Element}

Cancel the appointment
    Wait for text      Your repair appointment is scheduled for
    Click Element and Take ScreenShot     ${ticket_Cancel}
    Wait for text      Please confirm your reason for canceling.
    Click Element and Take ScreenShot     ${Serviceisworkingnow}
    Wait for text      Submitting Request
    Wait for text      Your repair appointment has been canceled.
    Click Element and Take ScreenShot     ${Continue_Button}
    Wait for text      If you have additional questions, you can chat with an agent
    Click Element and Take ScreenShot     ${Exit_Button}
    Wait for text      Ticket Creation Type :LOG_CALL
     Click Element and Take ScreenShot     ${Continue_Button}
    Wait for text      Closing Session
    Wait for text      Thank you for using the Troubleshooter.

I Reschedule and cancel appointment
    When Reload Page
    Then Verify the Opening Content
    When Reschedule a appointment
    When Reload Page
    Then Verify the Opening Content
    Then Cancel the appointment

Wait for text
     [Arguments]     ${Text}
     Wait until Keyword succeeds     3min    2ms     Page Should Contain       ${Text}
     Take Screenshot     ${EXECDIR}/ScreenShots/${testcase}Text
     
My internet isn't connected
   Click Element and Take ScreenShot      ${Internet}
   Sleep   3s
   Click Element and Take ScreenShot      ${notcontInt}
   Wait for text     Checking account
   Wait for text     Checking our network path to you
   Wait for text     Checking modem
   Wait for text     You have identified your issue is My internet isn't connected.
   Click Element and Take ScreenShot    ${ContinueTroubleshooting}
   Wait for text     Please check all the cables are securely connected to the modem
   Click Element and Take ScreenShot    ${Continue_Button}
   Wait for text     Please connect an Ethernet cable directly to an Ethernet port on the back of the modem
   Click Element and Take ScreenShot    ${No}
   Wait for text      To continue to use your third-party equipment please contact the manufacturer for further troubleshooting
   Click Element and Take ScreenShot    ${Continue_Button}
   Wait for text      There appears to be an issue impacting your service.
   Click Element and Take ScreenShot   ${ScheduleNow}
   Wait for text      Please click Chat to be connected with an agent
   Click Element and Take ScreenShot    ${Continue_Button}



I Hear a noise while using phone - ensable
    #Open a ssc Application
    Sleep   10s
    Click Element and Take ScreenShot      ${Voice}
    Sleep   10s
    #Wait for text     List     I hear a noise when using my phone
    Click Element and Take ScreenShot      ${Noise}
    Wait for text       Is the noise on the phone line heard on long distance calls only?
    Click Element and Take ScreenShot      ${NoNoiseallcalls}
    Wait for text      Do you hear a dial tone or just noise?
    Click Element and Take ScreenShot      ${Dialtonewithnoise}
    Sleep     5s
    Wait for text      Is the noise on all your phones or just one?
    Click Element and Take ScreenShot      ${Allphones}
    Wait for text      Does the noise occur only when it rains or at certain times of the day?
    Click Element and Take ScreenShot     ${Onlywhenitrains}
    Wait for text      We recommend a technician visit
    Click Element and Take ScreenShot     ${ScheduleNow}
    Sleep   5s
    Wait for text     Ticket Creation Type :DISPATCH
    Click Element and Take ScreenShot     ${Continue_Button}
    Schedule a Appointment

Voice Flow all calls - cris
     Sleep    10s
    Click Element and Take ScreenShot     ${Voice}
    Sleep   5s
    Click Element and Take ScreenShot      ${Noise}
    Wait for text       Do you hear the noise on your line on all calls or long distance calls only?
    Sleep    5s
    Click Element and Take ScreenShot      ${Allcalls}
    Wait for text     Is the noise on a cordless phone or a regular corded phone?


I Hear a noise while using phone -Cris
    Voice Flow All Calls - Cris
    Click Element and Take ScreenShot       ${Cordlessphoneonly}
    Wait for text     Cordless phones can generate interference or be affected by interference that causes static or noise on your phone line
    Click Element and Take ScreenShot       ${Continue_Button}
    Wait for text     Radio interference indicates there is a possible problem with your equipment or a wiring issue
    Click Element and Take ScreenShot       ${Interferencesourcenotidentified}
    Wait for text     There appears to be a problem with the wiring inside your home.
    Click Element and Take ScreenShot     ${ScheduleNow}
    Sleep   5s
    Wait for text     Ticket Creation Type :DISPATCH
    Click Element and Take ScreenShot     ${Continue_Button}
    Schedule a Appointment

I am not able to call out-cris
    Click Element and Take ScreenShot     ${Voice}
    Sleep   10s
    Click Element and Take ScreenShot     ${Cant_Call_Out}
    Wait for text       Are you able to receive calls?
    Click Element and Take ScreenShot       ${CanReceiveCalls}
    Wait for text       Are you not able to call out on all of your phones or just one?
    Click Element and Take ScreenShot       ${OnePhone}
    Wait for text       Is the one phone a cordless phone?
    Click Element and Take ScreenShot       ${NotCordless}
    Wait for text       Has the one phone ever worked in this jack?
    Click Element and Take ScreenShot       ${Yesworkedbefore}
    Wait for text       Please try the phone in a different jack that is working.
    Wait for text       Do you hear dial tone?
    Click Element and Take ScreenShot       ${YesIhavedialtone}
    Wait for text       We recommend a technician visit. In the meantime, you can try plugging your phone into an active jack.
    Click Element and Take ScreenShot     ${ScheduleNow}
    Schedule a Appointment

I am not able to call out-ensable
    Click Element and Take ScreenShot     ${Voice}
    Sleep   10s
    Click Element and Take ScreenShot     ${Cant_Call_Out}
    Wait for text       Are you able to receive calls?
    Click Element and Take ScreenShot       ${YesIcanreceivecalls}
    Wait for text        Please identify the type of number you are not able to call
    Select Radio Button     trouble         other
    Click Element and Take ScreenShot       ${Continue_Button}
    Sleep    10s
    Wait for text       Are you not able to call out on all of your phones?
    Click Element and Take ScreenShot       ${Allphones}
    Wait for text         What are you experiencing?
    Select Radio Button     answer        Nothing
    Click Element and Take ScreenShot       ${Continue}
    Wait for text         Do you hear dial tone now?
    Click Element and Take ScreenShot       ${NoStillnothing}
    Wait for text         Has this phone jack ever worked?
    Click Element and Take ScreenShot       ${Nopluggedinphonehasneverworked}
    Wait for text         Would you like to schedule a technician?
    Click Element and Take ScreenShot       ${ScheduleaRepairTechnicianvisit}
    Schedule a Appointment

I have no dial tone
    Click Element and Take ScreenShot     ${Voice}
    Sleep   10s
    Click Element and Take ScreenShot     ${No_Dial_Tune}
    Wait for text       Do you notice no dial tone on all phones, or just on one phone?
    Click Element and Take ScreenShot     ${Nodialtoneonallphones}
    Wait for text       Do you currently have power at your residence?
    Click Element and Take ScreenShot     ${YesIhavepower}
    Wait for text       We are about to run a line test that may take 2 minutes or more
    Click Element and Take ScreenShot     ${RunTest}
    Wait for text       Retrieving line test results
    Sleep      1min
    Wait for text       You can try running the test again, or continue with additional troubleshooting steps.
    Click Element and Take ScreenShot       ${Continue_1}
    Wait for text       Is the trouble on all phones or just one phone?
    Sleep       1min
    Click Element and Take ScreenShot       ${Allphone}
    Wait for text       We recommend checking all of your devices and jacks to ensure there is not a wiring issue inside your home, and reset your line
    Click Element and Take ScreenShot       ${Theproblemisisolatedtoonejack}
#    Schedule a Appointment
    Wait for text     technician visit
    Sleep    5s
    Click Element and Take ScreenShot     ${ScheduleNow}
    Wait for text      Send a technician to identify the problem, which might result in an additional charge
    Click Element and Take ScreenShot     ${Addplannowandscheduletechnician}
    Wait for text      you can continue to request a technician visit and accept a possible Trouble Isolation
    Click Element and Take ScreenShot     ${Schedulenowandacceptpossiblecharges}
    Wait for text       Checking history
    Wait for Text       Do you have another means of communicating while waiting for issue to be resolved?
    Click Element and Take ScreenShot     ${Yes}
    Wait for Text       Finding appointment
    Yes Schedule a appointment



Ticket Creation on Voice flow with outages

    [Tags]    Santiy Check on Noise
    Wait For Text      Checking account
    Wait For Text       Checking our network
    Wait for text      We recommend a technician visit
    Click Element and Take ScreenShot     ${ScheduleNow}
    Wait For Text      Checking account
    Wait For Text      Reading product details
    Wait For Text      Reading Pending Dispatch
    Wait for Text      Reading Appointment Details
    Wait for Text      Do you need to be there?
    ${Appointment_time}=     Get Text    ${suggested-date}
    Clear Element Text       ${contactPhoneNumber}
    Input text      ${contactPhoneNumber}     ${ContactNumber}
    Clear Element Text       ${contact_Name}
    Input Text      ${contact_Name}            ${Name}
    Clear Element Text       ${contactEmail}
    Input Text      ${contactEmail}             ${Email}
    Click Element and Take Screenshot    ${Continue_Button}
    Wait for Text       Almost done! Just need to give this a double check before submitting.
    Wait for Text       ${Appointment_time}
    Click Element and Take Screenshot    ${Continue_Button}
    Wait for Text       Creating ticket
    Wait for Text       You're all set!
    Wait for Text       ${Appointment_time}
    Click Element and Take Screenshot    ${Continue_Button}
    Wait for Text       Help is on the way.
    Click Element and Take ScreenShot     ${Exit_Button}
    Wait for text      Problem Type :GRPR
    Click Element and Take Screenshot    ${Continue_Button}
    Wait for text      Closing Session
    Wait For Text       Thank you for using
    Sleep      10s

Exit Flow
    Sleep    10s
    Click Element and Take ScreenShot     ${Exit_Button}
    Wait for text      Problem Type :HCKP
    Click Element and Take Screenshot    ${Continue_Button}
    Wait for text      Closing Session
    Wait For Text       Thank you for using
    Sleep      10s

BrowseTopics Flow
    Click Element and Take ScreenShot     ${BrowseTopics}
    Wait for text      Problem Type :HCKP
    Click Element and Take Screenshot    ${Continue_Button}
   # Wait for text      Capturing information
    Sleep    1Min
    Wait for text      Is there another service you are experiencing trouble with