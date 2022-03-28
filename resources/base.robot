* Settings *
Documentation       Configuração hooks
Library             SikuliLibrary
Resource            actions/operacoes_calc.robot

* Variables *
${App}       C:\\Windows\\System32\\calc.exe
${Images}    ${EXECDIR}\\resources\\elements

* Keywords *
Carrega os Elementos do App
    Add Image Path        ${Images}
    Set Capture Folder    ${EXECDIR}\\output\\allure

Inicia Sessão
    Carrega os Elementos do App
    Open Application        ${App}
    ${imageCoordinates}=    Get Image Coordinates  result_region.png
    Set Test Variable       ${imageCoordinates}

Encerra Sessão
    Stop Remote Server

Finaliza Teste
    Capture Screen
    Close Application    Calculator
