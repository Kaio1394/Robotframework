*** Settings ***
Resource        ../resource/Resource.robot
Test Setup      Abrir navegador
Test TearDown   Fechar navegador

*** Variables ***
${PESQUISA}                  PS4
${PESQUISA_DADO_INVALIDO}    ItemNãoExistente
${MENSAGEM_ERRO}             No results were found for your search "${PESQUISA_DADO_INVALIDO}"

*** Test Case ***
Pesquisar produtos existentes
    Acessar a página home do site
    Digitar o nome "${PESQUISA}" a ser pesquisado
    Clicar no botão Pesquisar
    Conferir se o produto "${PESQUISA}" foi listado no site

# Pesquisar produtos inexistentes
    # Acessar a página home do site
    # Digitar o nome do produto "${PESQUISA_DADO_INVALIDO}" no campo de pesquisa
#     Clicar no botão Pesquisar
#     Conferir mensagem de erro "${MENSAGEM_ERRO}"

*** Keywords ***
