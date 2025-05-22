***Settings***
Documentation    Suite de testes para cadastro de tarefas

Resource    ../resourcers/base.resource

Test Setup    Start session
Test Teardown    Finish session

*** Test Cases ***

Deve poder cadastrar uma nova tarefa
    ${task}    Set Variable    Teste XPath
    Remove task from database    ${task}
    
    Do login

    
    Create a new task    ${task}
    Should have task    ${task}

Deve poder removar uma tarefa

    [Tags]    remove_task

    ${task}    Set Variable    Comprar droga
    Remove task from database    ${task}
    Do login
    Create a new task    ${task}
    Should have task    ${task}

    Remove task by name    ${task}   
    Wait Until Page Does Not Contain    ${task}

Deve poder concluir uma tarefa

    [Tags]    done

    ${task}    Set Variable    Teste XPath
    Remove task from database    ${task}
    Do login
    Create a new task    ${task}
    Should have task    ${task}

    Finish task    ${task}
    Task should be done    ${task}
