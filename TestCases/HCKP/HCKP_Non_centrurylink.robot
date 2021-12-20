*** Settings ***
Resource    ../../Resources/Config.robot
Resource    Keyword.robot
Suite Setup      Run Keywords       Delete Screenshots
...     AND      Token Genaration
Test Setup    Given open a ssc Application       # Launch a ssc Application
Test Teardown    Run Keywords       Error ScreenShot
...    AND       Close Browser
Suite Teardown   Run Keywords    Remove screenshots from Output
...    AND       Empty Directory    ${Screenshot_Output}


*** Test Cases ***

TC1 HCKP non century link modem NO flow
    HCKP start flow
    HCKP Centrury Link Modem    ${Non_CenturyLink_modem}
    HCKP Non Centrury Link


TC2 HCKP non century link modem yes flow
    HCKP start flow
    HCKP Centrury Link Modem    ${Non_CenturyLink_modem}
    HCKP Centrury Link Yes flow
