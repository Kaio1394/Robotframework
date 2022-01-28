*** Settings ***
Resource        ../resource/Resource.robot
Test Setup      Abrir navegador
Test TearDown   Fechar navegador
*** Variables ***
${PESQUISA}     PS4

*** Test Case ***
Caso de teste 01: Pesquisar produtos existentes
    Acessar a página home do site
    Digitar o nome "${PESQUISA}" a ser pesquisado
    Clicar no botão Pesquisar
#     Conferir se o produto "${PESQUISA}" foi listado no site
#
# Caso de teste 02: Pesquisar produtos não existentes
#     Acessar a página home do site
#     Digitar o nome do produto "ItemNãoExistente" no campo de pesquisa
#     Clicar no botão Pesquisar
#     Conferir mensagem de erro "No results were found for your search "ItemNãoExistente""

*** Keywords ***
