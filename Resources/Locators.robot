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
${Voice}                     xpath://*[@id="voice"]/div[1]/h4/a
${ONorFlashinggreen}            id:ONorFlashinggreen
${NO_radio}                 xpath://*[@id="workflow-question"]/div[2]/div[2]/label/span
${Yes_radio}                 xpath://*[@id="workflow-question"]/div[2]/div[1]/label/span
${Noise}                    xpath://a[@_mce_href="#sscTest/SSC_NOL"]
${Not_Reciving}             xpath://a[@_mce_href="#sscTest/SSC_CBC"]
${No_Dial_Tune}             xpath://a[@_mce_href="#sscTest/SSC_NDT"]
${Cant_Call_Out}            xpath://a[@_mce_href="#sscTest/SSC_CCO"]
${My_Wireless}              xpath://a[@_mce_href="#sscTest/SSC_WIRELESS_FROM_LANDING"]
${NoNoiseallcalls}          id:NoNoiseonallcalls
${Dialtonewithnoise}        id:Dialtonewithnoise


${Allphones}                id:AllPhones
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
${RetryTest}                    id:RetryTest

${CanReceiveCalls}          id:CanReceiveCalls
${OnePhone}                 id:OnePhone
${NotCordless}              id:NotCordless
${Yesworkedbefore}          id:Yesworkedbefore
${YesIhavedialtone}         id:YesIhavedialtone
${Interferencesourcenotidentified}        id:Interferencesourcenotidentified
${Iacceptquotetoaddplan}        id:Iacceptquotetoaddplan
${YesIcanreceivecalls}       id:YesIcanreceivecalls
${Stillnothing}            id:Stillnothing
${Nothing}              id:Nothing
${Nopluggedinphonehasneverworked}       id:Nopluggedinphonehasneverworked
${ScheduleaRepairTechnicianvisit}       id:ScheduleaRepairTechnicianvisit
${Nodialtoneonallphones}        id:Nodialtoneonallphones
${YesIhavepower}            id:YesIhavepower
${RunTest}                  id:RunTest
${Theproblemisisolatedtoonejack}        id:Theproblemisisolatedtoonejack
${WillChatLatertoSchedule}              id:WillChatLatertoSchedule
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
${Nothing_Radios}           xpath://*[@id="workflow-question"]/div[2]/div[6]/label/span
${Nostillnotabletomakeacall}        id:Nostillnotabletomakeacall





#Dashboard
${Returntoclassicinterface}         id:Returntoclassicinterface
${Continuewithnewinterface}         id:Continuewithnewinterface
${internet_span}        id:internet-span
${Voice_span}        id:voice-span
${self_help_span}       id:self-help-span
${self_help_email}        id:self-help-email-span
${self_help_voicemail}      id:self-help-voicemail-span
${SSC_Container}        id:ssc-container

#Selfhelp speed
${Speedissues}     xpath://*[@id="internet-tab"]/div[4]/div/ul[1]/li[2]/a
${Speedissues_1}     xpath://*[@id="internet-tab"]/div[4]/div/ul[1]/li[3]/a

#Modem Selfhelp
${modemissues_1}     xpath://*[@id="internet-tab"]/div[4]/div/ul[3]/li[2]/a
${modemissues_2}     xpath://*[@id="internet-tab"]/div[4]/div/ul[3]/li[3]/a
${modemissues_3}     xpath://*[@id="internet-tab"]/div[4]/div/ul[3]/li[4]/a
${modemissues_4}     xpath://*[@id="internet-tab"]/div[4]/div/ul[3]/li[5]/a

${wifiissues_1}     xpath://*[@id="internet-tab"]/div[4]/div/ul[2]/li[2]/a
${wifiissues_2}     xpath://*[@id="internet-tab"]/div[4]/div/ul[2]/li[3]/a
${wifiissues_3}     xpath://*[@id="internet-tab"]/div[4]/div/ul[2]/li[4]/a
${wifiissues_4}     xpath://*[@id="internet-tab"]/div[4]/div/ul[2]/li[5]/a
${wifiissues_5}     xpath://*[@id="internet-tab"]/div[4]/div/ul[2]/li[6]/a
${wifiissues_6}     xpath://*[@id="internet-tab"]/div[4]/div/ul[2]/li[7]/a
${wifiissues_7}     xpath://*[@id="internet-tab"]/div[4]/div/ul[2]/li[8]/a

${Securityissues_1}     xpath://*[@id="internet-tab"]/div[4]/div/ul[4]/li[2]/a
${Securityissues_2}     xpath://*[@id="internet-tab"]/div[4]/div/ul[4]/li[3]/a
${Securityissues_3}     xpath://*[@id="internet-tab"]/div[4]/div/ul[4]/li[4]/a
${Securityissues_4}     xpath://*[@id="internet-tab"]/div[4]/div/ul[4]/li[5]/a
${Securityissues_5}     xpath://*[@id="internet-tab"]/div[4]/div/ul[4]/li[6]/a

${Voiceissues_1}       xpath://*[@id="voice-tab"]/div[3]/div/ul/li[1]/a
${Voiceissues_2}       xpath://*[@id="voice-tab"]/div[3]/div/ul/li[2]/a
${Voiceissues_3}       xpath://*[@id="voice-tab"]/div[3]/div/ul/li[3]/a
${Voiceissues_4}       xpath://*[@id="voice-tab"]/div[3]/div/ul/li[4]/a
${Voiceissues_5}       xpath://*[@id="voice-tab"]/div[3]/div/ul/li[5]/a
${Voiceissues_6}       xpath://*[@id="voice-tab"]/div[3]/div/ul/li[6]/a
${Voiceissues_7}       xpath://*[@id="voice-tab"]/div[3]/div/ul/li[7]/a
${Voiceissues_8}       xpath://*[@id="voice-tab"]/div[3]/div/ul/li[8]/a

${Access_Email_1}       xpath://*[@id="self-help-email-tab"]/div/div/ul[1]/li[2]/a
${Access_Email_2}       xpath://*[@id="self-help-email-tab"]/div/div/ul[1]/li[3]/a
${Access_Email_3}       xpath://*[@id="self-help-email-tab"]/div/div/ul[1]/li[4]/a

${Email_Address_1}       xpath://*[@id="self-help-email-tab"]/div/div/ul[2]/li[2]/a
${Email_Address_2}       xpath://*[@id="self-help-email-tab"]/div/div/ul[2]/li[3]/a
${Email_Address_3}       xpath://*[@id="self-help-email-tab"]/div/div/ul[2]/li[4]/a

${Password_email_1}       xpath://*[@id="self-help-email-tab"]/div/div/ul[3]/li[2]/a
${Password_email_2}       xpath://*[@id="self-help-email-tab"]/div/div/ul[3]/li[3]/a
${Password_email_3}       xpath://*[@id="self-help-email-tab"]/div/div/ul[3]/li[4]/a

${Inboxissue_1}       xpath://*[@id="self-help-email-tab"]/div/div/ul[4]/li[2]/a
${Inboxissue_2}       xpath://*[@id="self-help-email-tab"]/div/div/ul[4]/li[3]/a
${Inboxissue_3}       xpath://*[@id="self-help-email-tab"]/div/div/ul[4]/li[4]/a
${Inboxissue_4}       xpath://*[@id="self-help-email-tab"]/div/div/ul[4]/li[5]/a
${Inboxissue_5}       xpath://*[@id="self-help-email-tab"]/div/div/ul[4]/li[6]/a
${Inboxissue_6}       xpath://*[@id="self-help-email-tab"]/div/div/ul[4]/li[7]/a
${Inboxissue_7}       xpath://*[@id="self-help-email-tab"]/div/div/ul[4]/li[8]/a
${Inboxissue_8}       xpath://*[@id="self-help-email-tab"]/div/div/ul[4]/li[9]/a
${Inboxissue_9}       xpath://*[@id="self-help-email-tab"]/div/div/ul[4]/li[10]/a