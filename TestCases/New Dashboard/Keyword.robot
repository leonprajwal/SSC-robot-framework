*** Keywords ***
Launch a ssc Application dashboard
   open Chrome browser
   go to     ${SscTokenURL}${tokenGen}
   Verify the Opening Content dashbord

Verify the Opening Content dashbord
   # Wait for text      Data Line Test in Progress
    Sleep   20s
    ${text}=      Get Text   ${SSC_Container}
    Should Be Equal As Strings    ${Welcome}   ${text}
    #Wait for text       ${Welcome}
    Click Button       ${Continuewithnewinterface}
    Wait for text     Checking services
    Wait for text     Checking for pending repair tickets
    Wait for text     Checking for outages
    Wait for text           Getting subscriber details
    Sleep      10s
    Wait for text       Prefer the original design?

Get Text of page
    Sleep  10s
    ${text1}=      Get Text   ${SSC_Container}
     Set Global Variable  ${text1}
    #Log to console    ${text1}

Select Tab
    [Arguments]     ${Tab}
    Get Text of page
    Click Element and Take ScreenShot     ${Tab}

Verify the Page Content in Internet Tab
    Should Contain     ${text1}    ${Prefererence}
    Should Contain     ${text1}    ${Tabs_Internet}  #${Tabs_Internet_Voice}
    Should Contain     ${text1}    ${GeneralInfo}
    Should Contain     ${text1}    ${ModemNetworkTraffic}
    Should Contain     ${text1}    ${SpeedTest}
    Should Contain     ${text1}    ${Plan}
    Should Contain     ${text1}    ${DownloadSpeed}
    Should Contain     ${text1}    ${UploadSpeed}
    Should Contain     ${text1}    ${BandwidthUsage}
    Should Contain     ${text1}    ${ConnectedGadgets}
    Should Contain     ${text1}    ${5ghz}
    Should Contain     ${text1}    ${2_4ghz}

Verify the page contents Troubleshoot
    Should Contain     ${text1}    ${serviceIssue}
    Should Contain     ${text1}    ${Troubleshoot}
    Should Contain     ${text1}    ${No_Connection}
    Should Contain     ${text1}    ${int_keeps_going}
    Should Contain     ${text1}    ${Cant_Browse}
    Should Contain     ${text1}    ${Int_Slow}
    Should Contain     ${text1}    ${WIFI_notworking}

Verify the page contents internet self
    Should Contain     ${text1}    ${Suggested_self_help}
    Should Contain     ${text1}    ${int_Selfhelp_1}
    Should Contain     ${text1}    ${int_Selfhelp_2}
    Should Contain     ${text1}    ${int_Selfhelp_3}
    Should Contain     ${text1}    ${WifiSelfhelp_1}
    Should Contain     ${text1}    ${WifiSelfhelp_2}
    Should Contain     ${text1}    ${WifiSelfhelp_3}
    Should Contain     ${text1}    ${WifiSelfhelp_4}
    Should Contain     ${text1}    ${WifiSelfhelp_5}
    Should Contain     ${text1}    ${WifiSelfhelp_6}
    Should Contain     ${text1}    ${WifiSelfhelp_7}
    Should Contain     ${text1}    ${ModemSelfhelp_1}
    Should Contain     ${text1}    ${ModemSelfhelp_2}
    Should Contain     ${text1}    ${ModemSelfhelp_3}
    Should Contain     ${text1}    ${ModemSelfhelp_4}
    Should Contain     ${text1}    ${Securityhelp_1}
    Should Contain     ${text1}    ${Securityhelp_2}
    Should Contain     ${text1}    ${Securityhelp_3}
    Should Contain     ${text1}    ${Securityhelp_4}
    Should Contain     ${text1}    ${Securityhelp_5}


verify title of new tab
    [Arguments]     ${Element}    ${Title}
    Click Element and Take ScreenShot    ${Element}
    Sleep   10s
    ${handle}=  Switch Window	NEW
    Sleep   5s
    ${tit}=    Get Title
    Log to console         ${tit}
    Should Be Equal As Strings    ${tit}   ${Title}
    close window
    Sleep   10s
    Switch Window	 ${handle}



Verify internet tab selfhelp links
    verify title of new tab      ${Speedissues}        ${test_int_self}
    verify title of new tab      ${Speedissues_1}      ${4_tips_int_self}
    verify title of new tab      ${modemissues_1}      ${Modem_Firmware_int_self}
    verify title of new tab      ${modemissues_2}      ${Modem_light_int_self}
    verify title of new tab      ${modemissues_3}      ${router_support_int_self}
    verify title of new tab      ${modemissues_4}      ${return_modem_int_self}
    verify title of new tab      ${wifiissues_1}       ${Connect_wireless_int_self}
    verify title of new tab      ${wifiissues_2}       ${use_WPS_int_self}
    verify title of new tab      ${wifiissues_3}       ${Wifi_Externder_int_self}
    verify title of new tab      ${wifiissues_4}       ${Enable_wifi_int_self}
    verify title of new tab      ${wifiissues_5}       ${Change_Password_int_self}
    verify title of new tab      ${wifiissues_6}       ${Simple_steps_wifi_int_self}
    verify title of new tab      ${wifiissues_7}       ${Which_GHZ_int_self}
    verify title of new tab      ${Securityissues_1}   ${security_int_self}
    verify title of new tab      ${Securityissues_2}   ${Secure_wifi_manage_int_self}
    verify title of new tab      ${Securityissues_3}   ${support_int_security_self}
    verify title of new tab      ${Securityissues_4}   ${Need_extender_int_self}
    verify title of new tab      ${Securityissues_5}   ${FAQ_int_self}

Verify Voice tab selfhelp links
    verify title of new tab      ${Voiceissues_1}   ${call_voi_self}
    verify title of new tab      ${Voiceissues_2}   ${DNC_voi_self}
    verify title of new tab      ${Voiceissues_3}   ${trace_voi_self}
    verify title of new tab      ${Voiceissues_4}   ${damage_voi_self}
    verify title of new tab      ${Voiceissues_5}   ${repaire_voi_self}
    verify title of new tab      ${Voiceissues_6}   ${signal_voi_self}
    verify title of new tab      ${Voiceissues_7}   ${perform_voi_self}
    verify title of new tab      ${Voiceissues_8}   ${spoofing_voi_self}



Verify Email tab selfhelp links
    verify title of new tab         ${Access_Email_1}      ${Home_email_self}
    verify title of new tab         ${Access_Email_2}    ${Login_email_self}
    verify title of new tab         ${Access_Email_3}    ${server_email_self}
    verify title of new tab         ${Email_Address_1}    ${account_email_self}
    verify title of new tab         ${Email_Address_2}   ${add_del_email_self}
    verify title of new tab         ${Email_Address_3}   ${add_del_email_self}
    verify title of new tab         ${Password_email_1}   ${reset_email_self}
    verify title of new tab         ${Password_email_2}  ${pwd_change_email_self}
    verify title of new tab         ${Password_email_3}  ${strong_wifi_email_self}
    verify title of new tab         ${Password_email_3}  ${reset_email_self}
    verify title of new tab         ${Password_email_1}  ${reset_email_self}
    verify title of new tab         ${Password_email_1}  ${not_receive_email_self}
    verify title of new tab         ${Inboxissue_1}      ${Unlock_email_self}
    verify title of new tab         ${Inboxissue_2}      ${Unlock_email_self}
    verify title of new tab         ${Inboxissue_3}      ${virus_email_self}
    verify title of new tab         ${Inboxissue_4}      ${Customize_email_self}
    verify title of new tab         ${Inboxissue_5}      ${Phishing_email_self}
    verify title of new tab         ${Inboxissue_6}      ${portfilter_email_self}
    verify title of new tab         ${Inboxissue_7}      ${safety_email_self}
    verify title of new tab         ${Inboxissue_8}      ${Customize_email_self}
    verify title of new tab         ${Inboxissue_9}      ${Home_email_self}
