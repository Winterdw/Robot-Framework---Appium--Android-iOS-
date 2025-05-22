*** Settings ***

Resource    ../resourcers/base.resource

*** Test Cases ***

Deve escolher o nível Padawan

    Start session
    Get started
    Navigate to    Formulários
    Select level    Padawan
    Close session


Deve escolher o nível Jedi

    Start session
    Get started
    Navigate to    Formulários
    Select level    Jedi
    Close session


Deve escolher o nível Sith    

    Start session
    Get started
    Navigate to    Formulários
    Select level    Sith
    Close session

Deve escolher o nível Outros

    Start session
    Get started
    Navigate to    Formulários
    Select level    Outros
    Close session


*** Keywords ***

Select level

    Go to item    Cadastro    Crie sua conta.
    [Arguments]    ${level}
    CLick Element    id=com.qaxperience.yodapp:id/spinnerJob
    Wait Until Element Is Visible    class=android.widget.ListView
    Click Text    ${level}