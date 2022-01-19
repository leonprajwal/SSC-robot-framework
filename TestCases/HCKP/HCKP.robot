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

TC1 HCKP century link modem NO flow(browse and HCNB)
    HCKP start flow
    HCKP Centrury Link Modem    ${CenturyLink_modem_Router}
    compare_images
    #HCKP Centrury Link No flow    ${Yes}    ${Yes}
    #Exit Flow
    #BrowseTopics Flow

TC2 HCKP century link modem NO flow(browse)
    HCKP start flow
    HCKP Centrury Link Modem     ${CenturyLink_modem_Router} 
    HCKP Centrury Link No flow    ${Yes}    ${No}
    #Exit Flow
    #BrowseTopics Flow

TC3 HCKP century link modem NO flow(cant browse and HCNB-no)
    HCKP start flow
    HCKP Centrury Link Modem     ${CenturyLink_modem_Router} 
    HCKP Centrury Link No flow    ${NO}        ${NO}

TC4 HCKP century link modem NO flow(cant browse and HCNB-Yes)
    HCKP start flow
    HCKP Centrury Link Modem        ${CenturyLink_modem_Router} 
    HCKP Centrury Link No flow    ${NO}        ${Yes}

TC5 HCKP century link modem Yes flow
    HCKP start flow
    HCKP Centrury Link Modem        ${CenturyLink_modem_Router} 
    HCKP Centrury Link Yes flow
    #BrowseTopics Flow

TC6 HCKP centry Link modem Flashing Green flow(HCNB-yes)
    HCKP start flow
    HCKP Centrury Link Modem        ${CenturyLink_modem_Router} 
   HCKP Centrury Link Flashing Green       ${Yes}
 #   Exit Flow

TC7 HCKP centry Link modem Flashing Green flow(HCNB-no)
    HCKP start flow
    HCKP Centrury Link Modem        ${CenturyLink_modem_Router} 
   HCKP Centrury Link Flashing Green       ${No}
 #   Exit Flow

TC8 HCKP Centrury Link the Ethernet light is on after connecting another device(HCNB-No)
    HCKP start flow
    HCKP Centrury Link Modem        ${CenturyLink_modem_Router} 
    HCKP Centrury Link Browse internet after connecting
    HCKP Centrury Link have another device Ethernet light    ${Yes}
    Modem Light         ${No}    ${No}
    #Exit Flow


TC9 HCKP Centrury Link the Ethernet light is on after connecting another device(HCNB-Yes)
    HCKP start flow
    HCKP Centrury Link Modem        ${CenturyLink_modem_Router} 
    HCKP Centrury Link Browse internet after connecting
    HCKP Centrury Link have another device Ethernet light    ${Yes}
    Modem Light         ${No}    ${Yes}
    #Exit Flow

TC10 HCKP Centrury Link the Ethernet light is on after connecting another device
    HCKP start flow
    HCKP Centrury Link Modem        ${CenturyLink_modem_Router} 
    HCKP Centrury Link Browse internet after connecting
    HCKP Centrury Link have another device Ethernet light    ${Yes}
    Modem Light         ${Yes}    ${Yes}
    #Exit Flow

TC11 HCKP Centrury Link unable to Browse internet after connecting another device
    HCKP start flow
    HCKP Centrury Link Modem        ${CenturyLink_modem_Router} 
    HCKP Centrury Link Browse internet after connecting
    HCKP Centrury Link have another device Ethernet light    ${Yes}
    Modem Light         ${No}     ${No}
    Exit Flow


TC12 HCKP Centrury Link wont try Wireless modem(HCNB-No)
    HCKP start flow
    HCKP Centrury Link Modem        ${CenturyLink_modem_Router} 
    HCKP Centrury Link Browse internet after connecting
    HCKP Centrury Link Dont have another device    ${No}    ${No}
    #Exit Flow

TC13 HCKP Centrury Link wont try Wireless modem(HCNB-Yes)
    HCKP start flow
    HCKP Centrury Link Modem        ${CenturyLink_modem_Router} 
    HCKP Centrury Link Browse internet after connecting
    HCKP Centrury Link Dont have another device    ${No}
    #Exit Flow

TC14 HCKP Centrury Link try Wireless modem(Can Browse)
    HCKP start flow
    HCKP Centrury Link Modem        ${CenturyLink_modem_Router} 
    HCKP Centrury Link Browse internet after connecting
    HCKP Centrury Link Dont have another device    ${Yes}
    HCKP Wireless can browse
    #Exit Flow

TC15 HCKP Centrury Link try Wireless modem(Cant Browse)
    HCKP start flow
    HCKP Centrury Link Modem        ${CenturyLink_modem_Router} 
    HCKP Centrury Link Browse internet after connecting
    HCKP Centrury Link Dont have another device    ${Yes}
    HCKP Wireless can't browse
    #Exit Flow

TC16 HCKP Ethernet Different Device(HCNB-No)
    HCKP start flow
    HCKP Centrury Link Modem        ${CenturyLink_modem_Router} 
    HCKP Centrury Link Browse internet after connecting
    HCKP Centrury Link have another device Ethernet light    ${No}
    HCKP Have differernt cable    
    Modem Light         ${No}    ${No}

TC17 HCKP Ethernet Different Device(HCNB-Yes)
    HCKP start flow
    HCKP Centrury Link Modem        ${CenturyLink_modem_Router} 
    HCKP Centrury Link Browse internet after connecting
    HCKP Centrury Link have another device Ethernet light    ${No}
    HCKP Have differernt cable          
    Modem Light         ${No}    ${Yes}

TC18 HCKP Ethernet Different Device
    HCKP start flow
    HCKP Centrury Link Modem        ${CenturyLink_modem_Router} 
    HCKP Centrury Link Browse internet after connecting
    HCKP Centrury Link have another device Ethernet light    ${No}
    HCKP Have differernt cable    
    Modem Light         ${Yes}