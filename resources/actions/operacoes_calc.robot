* Settings *
Documentation   Operações na Calculadora
Library         String
Library         ImageHorizonLibrary

* Keywords *
Pressionar o botão
    [Arguments]    ${BUTTON}

    SikuliLibrary.Click    button_${BUTTON}.png

Deve exibir o resultado
    [Arguments]    ${RESULT}

    ${screenshotname}=    Capture Region    ${imageCoordinates}
    # SikuliLibrary.Click    ${screenshotname}
    ${resultado}=    Copy
    ${resultado}=    Replace String    ${resultado}    ,    ${EMPTY}
    Should Be Equal As Numbers    ${resultado}    ${RESULT}    Mensagem de erro

Deve exibir o resultado com a mensagem de erro
    [Arguments]    ${MSG}

    ${screenshotname}=    Capture Region    ${imageCoordinates}
    ${result}=    Get Text    ${screenshotname}
    Should Be Equal As Strings    ${result}    ${MSG}    Mensagem de erro
