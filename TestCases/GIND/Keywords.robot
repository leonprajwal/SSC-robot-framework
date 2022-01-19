*** Variables ***
${testcase}        GIND
${Product_Support}      Connectivity>Intermittent>Transfer/Refer>Tier 1.0 HSI/Product Support
${ProductSupport_Non_Cust}        Non-customer Call>Tool Issue>Transfer/Refer>Tier 1.0 HSI/Product Support
${Schedule_Later_Prcode}        Connectivity>Intermittent>Dispatch>Later
${Schedule_Now_Prcode}        Connectivity>Intermittent>Dispatch>Customer
${NoSync_sch_later}         Connectivity>No Sync>Dispatch>Later
${NoSync_sch_Now}        Connectivity>No Sync>Dispatch>Customer
${Product_Support_noSync}      Connectivity>No Sync>Transfer/Refer>Tier 1.0 HSI/Product Support

*** Keywords ***
GIND Start flow
     Wait for text      Checking account
     Wait For Text      Checking our network
     Wait for Text      Checking our Network path to you
