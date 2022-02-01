*** Settings ***
Resource        ../resource/Resource.robot
Test Setup      Abrir navegador
Test TearDown   Fechar navegador

*** Variables ***
${PESQUISA}                  ps4
${PESQUISA_DADO_INVALIDO}    ItemNãoExistente
${MENSAGEM_ERRO}             Sua busca por "${PESQUISA_DADO_INVALIDO}" não encontrou resultado algum :

*** Test Case ***
Pesquisar produtos existentes
    Digitar o nome "${PESQUISA}" a ser pesquisado
    Clicar no botão Pesquisar
    Conferir se o produto "${PESQUISA}" foi listado no site

Pesquisar produtos inexistentes
    Digitar o nome do produto "${PESQUISA_DADO_INVALIDO}" no campo de pesquisa
    Clicar no botão Pesquisar.
    Conferir mensagem de erro "${MENSAGEM_ERRO}"

*** Keywords ***
