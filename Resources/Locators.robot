*** Variables ***
${GenToken}           xpath://*[@id="left"]/form/div[6]/input
${Subcriber_num}      id:subscriberId
${Type_Token}         id:tokenType
${copy_Token}         id:token
${BrowseTopics}         id:BrowseTopics
${ChatNow}              id:ChatNow
#Internet
${Internet}                     Xpath://*[@id="internet"]/div[1]/h4/a/i
${notcontInt}                   Xpath://*[@id="leftTroubleShooter"]/li[1]/a
${Keeps_going}                   Xpath://*[@id="leftTroubleShooter"]/li[2]/a
${Modem_on_off}                 xpath://*[@id="modemForm"]/div[1]/label/span
${PowerLight}                   xpath://*[@id="powerLightForm"]/div[2]/label/span
${WanLight}                     xpath://*[@id="powerForm"]/div[1]/label/span
${BrowseInt_Yes_No}             xpath://*[@id="workflow-question"]/div[2]/div[1]/label/span
${InternetLight}                xpath://*[@id="internetLightForm"]/div[2]/label/span
${Router_Img}                   xpath://*[@id="workflow-form"]/div[2]/p[8]/img
${computer_modem_img}           xpath://*[@id="workflow-form"]/div[2]/p[3]/img
${Modem_img}                    xpath://*[@id="workflow-form"]/div[2]/p[12]/img
${modem_Light_Img}              xpath://*[@id="workflow-form"]/div[2]/p/img
${Continue_Button}              id:button
${Continue}                    id:continueBtn
${Exit_Button}                 id:Exit
${Tryagainlater}               id:Tryagainlater
${Tryagain}               id:TryAgain
${ContinueTroubleshooting}     id:ContinueTroubleshooting
${Continue_1}                  id:Continue
${OFF}                         id:OFF
${Internetisalsonotworking}     id:Internetisalsonotworking
${YesIcanmakecalls}             id:YesIcanmakecalls
${pin1_loc}         id:ssnNumber1
${pin2_loc}         id:ssnNumber2
${pin3_loc}         id:ssnNumber3
${pin4_loc}         id:ssnNumber4
#Outage
${YesRequestNotifications}          id:YesRequestNotifications
${textNotification}                 id:textNotification
${outageNotificationText}           id:outageNotificationText
${submitWithoutNotificationButton}          id:submitWithoutNotificationButton
${Submit}                   id:Submit
${Noskiptoscheduledrepair}              id:Noskiptoscheduledrepair
#Schedule ticket
${Hear other voices}         xpath://*[@id="workflow-question"]/div[2]/div[5]/label/span
${YesSchedule}                 id:YesSchedule
${YesthereisclearaccesstotheNID}     id:YesthereisclearaccesstotheNID
${Yessubmitnewappointment}     id:Yessubmitnewappointment
${Iunderstandandagree}         id:Iunderstandandagree
${contactPhoneNumber}          id:contactPhoneNumber
${contactName}                 id:contactName
${Contact_Name}                id:name
${contactEmail}                id:contactEmail
${Thisiscorrectschedule}       id:Thisiscorrectschedule
${Reschedule}                  id:ticket_Reschedule_Button
${date}                        xpath://*[@id="workflow-form"]/div[2]/p[1]/b[1]
${ticket_Cancel}               id:ticket_Cancel_Button
${Keep_Ticket}                 id:ticket_NoUpdate_button
${Confirm}                     id:Confirm
${Serviceisworkingnow}         id:Serviceisworkingnow
${Noskiptonextrepair}           id:Noskiptonextrepair
${Nocontinue}                   id:Nocontinue
#Voice
#${Voice}                    xpath://*[@id="voice"]/div[1]/h4/a
${Voice}                     xpath://*[@id="voice"]/div[1]/h4/a/i
${ONorFlashinggreen}            id:ONorFlashinggreen
${NO_radio}                 xpath://*[@id="workflow-question"]/div[2]/div[2]/label/span
${Yes_radio}                 xpath://*[@id="workflow-question"]/div[2]/div[1]/label/span
${Noise}                    xpath://*[@id="leftTroubleShooter"]/li[6]/a
${Not_Reciving}             xpath://a[@_mce_href="#sscTest/SSC_CBC"]
${No_Dial_Tune}             xpath://a[@_mce_href="#sscTest/SSC_NDT"]
${Cant_Call_Out}            xpath://a[@_mce_href="#sscTest/SSC_CCO"]
${My_Wireless}              xpath://a[@_mce_href="#sscTest/SSC_WIRELESS_FROM_LANDING"]
${NoNoiseallcalls}          id:NoNoiseonallcalls
${Dialtonewithnoise}        id:Dialtonewithnoise
${Allphones}                id:Allphones
${AllPhone}                 xpath://*[@id="AllPhones"]
${Onlywhenitrains}          id:Onlywhenitrains
${ScheduleNow}              id:ScheduleNow
${ScheduleLater}            id:ScheduleLater
${Addplannowandscheduletechnician}         id:Addplannowandscheduletechnician
${Schedulenowandacceptpossiblecharges}     id:Schedulenowandacceptpossiblecharges
${Yes}                      id:Yes
${suggested-date}           id:suggested-date
${No}                       id:No
${Allcalls}                 id:Allcalls
${Cordlessphoneonly}        id:Cordlessphoneonly
${Cordlessandcordedphones}      id:Cordlessandcordedphones
#${Hear other voices}            id:Hear other voices
${CanReceiveCalls}          id:CanReceiveCalls
${OnePhone}                 id:OnePhone
${NotCordless}              id:NotCordless
${Yesworkedbefore}          id:Yesworkedbefore
${YesIhavedialtone}         id:YesIhavedialtone
${Interferencesourcenotidentified}        id:Interferencesourcenotidentified
${Iacceptquotetoaddplan}        id:Iacceptquotetoaddplan
${YesIcanreceivecalls}       id:YesIcanreceivecalls
${NoStillnothing}            id:NoStillnothing
${Nopluggedinphonehasneverworked}       id:Nopluggedinphonehasneverworked
${ScheduleaRepairTechnicianvisit}       id:ScheduleaRepairTechnicianvisit
${Nodialtoneonallphones}        id:Nodialtoneonallphones
${YesIhavepower}            id:YesIhavepower
${RunTest}                  id:RunTest
${Theproblemisisolatedtoonejack}        id:Theproblemisisolatedtoonejack
${Modem_wireless}            id:Modemwireless
${Cell_Phone_wireless}       id:Cell_Phone_wireless
${CenturyLink_modem}             Xpath://*[@id="workflow-form"]/div[2]/div[1]/label/span
${CenturyLink_modem_Router}             Xpath://*[@id="workflow-form"]/div[2]/div[2]/label/span
${Non_CenturyLink_modem}             Xpath://*[@id="workflow-form"]/div[2]/div[3]/label/span


#CBCC
${Unabletochangeinupdatecenter}         id:Unabletochangeinupdatecenter
${First_radio}              xpath://*[@id="workflow-question"]/div[2]/div[1]/label/span
${Second_radio}             xpath://*[@id="workflow-question"]/div[2]/div[2]/label/span
${Third_radio}             xpath://*[@id="workflow-question"]/div[2]/div[3]/label/span
${Fourth_radio}             xpath://*[@id="workflow-question"]/div[2]/div[3]/label/span
${fifith_radio}             xpath://*[@id="workflow-question"]/div[2]/div[3]/label/span
${Sixth_radio}             xpath://*[@id="workflow-question"]/div[2]/div[3]/label/span






