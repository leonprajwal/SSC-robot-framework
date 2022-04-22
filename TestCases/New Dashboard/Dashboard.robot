*** Settings ***
Resource    ../../Resources/Config.robot
Resource    keyword.robot
Suite Setup      Run Keywords       Delete Screenshots
...     AND      Token Genaration
Test Setup    Launch a ssc Application dashboard
Test Teardown    Error ScreenShot
Suite Teardown   Run Keywords    Remove screenshots from Output
#...    AND       Close Browser


*** Test Cases ***

TC1 internet Tab with troubleshot links
    Select Tab       ${internet_span}
    Verify the Page Content in Internet Tab
    Verify the page contents Troubleshoot
    Verify the page contents internet self


TC2 Voice Tab with troubleshot links
    Select Tab       ${internet_span}
    Verify the Page Content in Internet Tab
    Verify the page contents Troubleshoot
    Verify the page contents internet self

TC3 Internet Tab Self help links
    Select Tab       ${internet_span}
    Verify internet tab selfhelp links

TC4 Voice Tab Self help links
    Select Tab      ${Voice_span}
    Verify Voice tab selfhelp links

TC5 Email Tab Self help links
    Select Tab      ${self_help_span}
    Select Tab          ${self_help_email}
    Verify Email tab selfhelp links