***Settings***

Documentation    Tudo vai começar aqui

Library    AppiumLibrary
Library    libs/mongo.py

Resource    screens/login.resource
Resource    screens/tasks.resource

***Keywords***
Start session
    Open Application    http://localhost:4723
    ...    automationName=UiAutomator2
    ...    platformName=Android
    ...    udid=emulator-5554
    ...    autoGrantPermissions=true
    ...    app=${EXECDIR}/apps/markx.apk

    Wait Until Page Contains    Endereço IP da Api   10

Finish session
    Capture Page Screenshot
    Close Application

