*** Settings ***

Resource    ../resourcers/base.resource

*** Test Cases ***

Deve poder remover o Darth Vader

    Start session
    Get started
    Navigate to    Star Wars
    Go to item    Lista    Darth Vader
   
    ${position}    Get Element Location    //android.widget.TextView[@text="@darthvader"]/../../..//*[contains(@resource-id, "indicator")]
    ${start_x}    Set Variable    ${position}[x]
    ${start_y}    Set Variable    ${position}[y]
    ${offset_x}    Evaluate    ${position}[x] - 650
    ${offset_y}    Set Variable    ${position}[y]
    Swipe    ${start_x}    ${start_y}    ${offset_x}    ${offset_y}    1000

    Click Element    id=com.qaxperience.yodapp:id/btnRemove

    Wait Until Page Does Not Contain    Darth Vader

    Close session