***Settings***
Documentation    Elementos e ações da tela de login

Library    AppiumLibrary

*** Variables ***
${API_IP}    172.21.144.1

**Keywords***
Do login
    Input Text    xpath=//*[@resource-id="apiIp"]    ${API_IP}
    Click Element    xpath=//*[@resource-id="signInButton"]
