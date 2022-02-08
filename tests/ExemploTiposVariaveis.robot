*** Settings ***
Documentation   Exemplo de tipos de variáveis: SIMPLES, LISTAS e DICIONÁRIOS

*** Variables ***
${GLOBAL_SIMPLES}     Vamos ver os tipos de variáveis no robot!

# Listas
@{FRUTAS}             morando     banana    maça    uva   abacaxi

# Dicionário
&{PESSOA}             nome=Kaio Cândido S.    email=kaio@hotmail.com    idade=27    sexo=masculino
*** Test Case ***
Caso de teste de exemplo 01
    Uma keyword qualquer 01
*** Keywords ***
Uma keyword qualquer 01
    Log    ${GLOBAL_SIMPLES}
    Log    Tem que ser maça: ${FRUTAS[2]} e ssa tem que ser morango: ${FRUTAS[0]}
    Log    Nome: ${PESSOA.nome} e email: ${PESSOA.email}
