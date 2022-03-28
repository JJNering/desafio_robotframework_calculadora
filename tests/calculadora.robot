* Settings *
Documentation       Suítes de testes
Resource            ${EXECDIR}/resources/base.robot
Test Setup          Inicia Sessão
Test Teardown       Encerra Sessão
Default Tags        op_soma    op_subtração    op_multiplicação    op_divisão    smoke

* Test Cases *

# Cenário 01 -
Usuário pressiona dois números
    [Tags]    smoke
    Pressionar o botão    2
    Pressionar o botão    5
    Deve exibir o resultado    25

    [Teardown]    Finaliza Teste

# Cenário 02 -
Usuário realiza operação matemática de soma com números positivos
    [Tags]    op_soma    smoke
    Pressionar o botão    5
    Pressionar o botão    mais
    Pressionar o botão    8
    Pressionar o botão    igualdade
    Deve exibir o resultado    13

    [Teardown]    Finaliza Teste

# Cenário 03 -
Usuário realiza operação matemática de soma com números decimais
    [Tags]    op_soma
    Pressionar o botão    9
    Pressionar o botão    ponto
    Pressionar o botão    2
    Pressionar o botão    4
    Pressionar o botão    mais
    Pressionar o botão    3
    Pressionar o botão    ponto
    Pressionar o botão    9
    Pressionar o botão    5
    Pressionar o botão    igualdade
    Deve exibir o resultado    13.19 

    [Teardown]    Finaliza Teste

# Cenário 04 -
Usuário realiza operação matemática de soma com número negativo
    [Tags]    op_soma
    Pressionar o botão    menos
    Pressionar o botão    5
    Pressionar o botão    4
    Pressionar o botão    mais
    Pressionar o botão    2
    Pressionar o botão    0
    Pressionar o botão    igualdade
    Deve exibir o resultado    -34

    [Teardown]    Finaliza Teste

# Cenário 05 -
Usuário realiza operação matemática de subtração
    [Tags]    op_subtração    smoke
    Pressionar o botão    2
    Pressionar o botão    9
    Pressionar o botão    5
    Pressionar o botão    menos
    Pressionar o botão    2
    Pressionar o botão    5
    Pressionar o botão    igualdade
    Deve exibir o resultado    270

    [Teardown]    Finaliza Teste

# Cenário 06 -
Usuário realiza operação matemática de subtração com números decimais
    [Tags]    op_subtração
    Pressionar o botão    2
    Pressionar o botão    ponto
    Pressionar o botão    9
    Pressionar o botão    5
    Pressionar o botão    5
    Pressionar o botão    5
    Pressionar o botão    5
    Pressionar o botão    menos
    Pressionar o botão    2
    Pressionar o botão    5
    Pressionar o botão    ponto
    Pressionar o botão    2
    Pressionar o botão    5
    Pressionar o botão    2
    Pressionar o botão    igualdade
    Deve exibir o resultado    -22.29645

    [Teardown]    Finaliza Teste

# Cenário 07 -
Usuário realiza operação matemática de multiplicação
    [Tags]    op_multiplicação    smoke
    Pressionar o botão    8
    Pressionar o botão    2
    Pressionar o botão    multiplicação
    Pressionar o botão    7
    Pressionar o botão    6
    Pressionar o botão    igualdade
    Deve exibir o resultado    6232

    [Teardown]    Finaliza Teste

# Cenário 08 -
Usuário realiza operação matemática de multiplicação com dois fatores negativos
    [Tags]    op_multiplicação
    Pressionar o botão    menos
    Pressionar o botão    8
    Pressionar o botão    2
    Pressionar o botão    multiplicação
    Pressionar o botão    7
    Pressionar o botão    6
    Pressionar o botão    altera-sinal
    Pressionar o botão    igualdade
    Deve exibir o resultado    6232

    [Teardown]    Finaliza Teste

# Cenário 09 -
Usuário realiza operação matemática de multiplicação em condição de overflow
    [Tags]    op_multiplicação
    Pressionar o botão    9
    Pressionar o botão    9
    Pressionar o botão    9
    Pressionar o botão    9
    Pressionar o botão    9
    Pressionar o botão    9
    Pressionar o botão    9
    Pressionar o botão    9
    Pressionar o botão    9
    Pressionar o botão    9
    Pressionar o botão    9
    Pressionar o botão    9
    Pressionar o botão    9
    Pressionar o botão    9
    Pressionar o botão    9
    Pressionar o botão    9
    Pressionar o botão    multiplicação
    Pressionar o botão    9
    Pressionar o botão    igualdade
    Deve exibir o resultado    8.999999999999999e+16

    [Teardown]    Finaliza Teste

# Cenário 10 -
Usuário realiza operação matemática de multiplicação com um fator decimal e o outro negativo
    [Tags]    op_multiplicação
    Pressionar o botão    2
    Pressionar o botão    6
    Pressionar o botão    ponto
    Pressionar o botão    4
    Pressionar o botão    multiplicação
    Pressionar o botão    7
    Pressionar o botão    altera-sinal
    Pressionar o botão    igualdade
    Deve exibir o resultado    -184.8

    [Teardown]    Finaliza Teste

# Cenário 11 -
Usuário realiza operação matemática de divisão
    [Tags]    op_divisão    smoke
    Pressionar o botão    1
    Pressionar o botão    2
    Pressionar o botão    8
    Pressionar o botão    divisão
    Pressionar o botão    2
    Pressionar o botão    igualdade
    Deve exibir o resultado    64

    [Teardown]    Finaliza Teste

# Cenário 12 -
Usuário realiza operação matemática de divisão com divisor decimal e negativo
    [Tags]    op_divisão
    Pressionar o botão    8
    Pressionar o botão    4
    Pressionar o botão    divisão
    Pressionar o botão    4
    Pressionar o botão    ponto
    Pressionar o botão    8
    Pressionar o botão    altera-sinal
    Pressionar o botão    igualdade
    Deve exibir o resultado    -17.5

    [Teardown]    Finaliza Teste

# Cenário 13 -
Usuário tenta realizar operação matemática de divisão por zero
    [Tags]    op_divisão    smoke
    Pressionar o botão    9
    Pressionar o botão    divisão
    Pressionar o botão    0
    Pressionar o botão    igualdade
    Deve exibir o resultado com a mensagem de erro    Cannot divide by zero

    [Teardown]    Finaliza Teste

# Cenário 14 -
Usuário tenta inserir mais do que 16 casas permitidas
    [Tags]    smoke
    Pressionar o botão    4
    Pressionar o botão    2
    Pressionar o botão    8
    Pressionar o botão    9
    Pressionar o botão    5
    Pressionar o botão    6
    Pressionar o botão    2
    Pressionar o botão    4
    Pressionar o botão    7
    Pressionar o botão    5
    Pressionar o botão    6
    Pressionar o botão    4
    Pressionar o botão    9
    Pressionar o botão    8
    Pressionar o botão    3
    Pressionar o botão    2

    Pressionar o botão    6
    Pressionar o botão    2
    Pressionar o botão    9
    Deve exibir o resultado    4289562475649832

    [Teardown]    Finaliza Teste
