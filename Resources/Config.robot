*** Settings ***
#Resource   ../Resources/Variables.robot
Resource   ../Resources/Keywords.robot
Resource   ../Resources/Locators.robot
Library   RequestsLibrary
Library   Selenium2Library
Library   OperatingSystem
Library   Collections
Library   Screenshot
Library     ../Library/ImageCompare.py


*** Variables ***

${TokenGenURL}    http://edge-ssctokengeneration-test1.kubeodc-test.corp.intranet/SSCTokenGeneration/
${BROWSER}     Chrome
${Base_Url}     https://api-test1.centurylink.com
${Relative_Url}     /Application/v1/Rxmicro/services/rxProductInfo?etn=${Number}
${username_api}     rxdsl
${Pwd_api}          Cntl#2017
${Chrome_DIR}   ${EXECDIR}/Resources/Driver/chromedriver.exe
${SscTokenURL}     https://sscqa.centurylink.com/ssc/index.html?token=
#${tokenGen}         eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJ3dG4iOiIzMDM0NjY1MTAwIiwiYWNjb3VudF9udW1iZXIiOiIiLCJhY2NvdW50X251bV90eXBlIjoiQkFOIiwidHdveHNfZWRnZV9hdXRoX2ZsYWciOnRydWUsImlzcyI6IjJ4cy1lMmUiLCJleHAiOjE2NDYyOTcyMTcsImlhdCI6MTYzNzY1NzIxN30.b2vbDeI-jDZnL-c9m2r86Co3SKfkhTgapUOaJ8kNJGc09xu7eRv0Fy7DF7dEMnY0HHwbrFN5fshKNs9aYKLNz8tJI1sDGRn-aE6FZkbALYVbhAQpvJooilbRZxZYYQYapQdG__-LZNsVM7lEDPCVW50RBngQaWr7FkBX6VqT1d1dJsQEplVojlHx0fay8Ixzb7doTN8h1xnREzmTk31yK-T_0-CNNybDwztuKczxZpPfsO-23waGY6FdgwhtRMqfjC64l3ZkFbCJWvWH2jqbXz-d8-zWHxZLwoXOyoKSoOKSX096eVFVyYLBurcRYQ6HJWwsF3BMJxJrNe8gfgeqdA
${Number}        3034523852
         #3034690690
          #3034227079          #3034608491
#${Number}        9038340169       #4078141347

#${Number}        3034665100
${ContactNumber}     8262224178
${Name}        Leon
${Email}           Call@me.com
${testcase}         Auth
${HCKP_Screenshot_Master}      ${EXECDIR}\\TestCases\\HCKP\\Compare_Screen\\Master
${Screenshot_Output}       ${EXECDIR}\\TestCases\\HCKP\\Compare_Screen\\Output