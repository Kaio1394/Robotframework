*** Settings ***
Resource        ../resource/Resource.robot
Test Setup      Abrir navegador
Test TearDown   Fechar navegador
*** Variables ***
${BROWSER}               chrome
${URL}                   https://www.magazineluiza.com.br/
${TITLE_PAGE}            Magazine Luiza | Pra você é Magalu!
${PESQUISA}                  ps4
${PESQUISA_DADO_INVALIDO}    ItemNãoExistente
${MENSAGEM_ERRO}             Sua busca por "${PESQUISA_DADO_INVALIDO}" não encontrou resultado algum :

*** Test Case ***
Cenário 01: Pesquisar produtos existentes
    Dado que eu estou na página home do site
    Quando eu pesquisar pelo produto "${PESQUISA}"
    Então o produto "Blouse" deve ser listado na página de resultado da busca
#
# Cenário 02: Pesquisar produtos não existentes
#     Dado que eu estou na página home do site
#     Quando eu pesquisar pelo produto "ItemNãoExistente"
#     Então a página deve exibir uma mensagem de erro "No results were found for your search "ItemNãoExistente""

*** Keywords ***

Dado que eu estou na página home do site
    Acessar página home do site

Quando eu pesquisar pelo produto "${PESQUISA}"
    Digitar o nome "${PESQUISA}" a ser pesquisado
    Clicar no botão Pesquisar

Então o produto "Blouse" deve ser listado na página de resultado da busca
    Conferir se o produto "${PESQUISA}" foi listado no site
