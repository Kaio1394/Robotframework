*** Settings ***
Resource        ../resource/Resource.robot

*** Variables ***

*** Test Case ***
Cenário 01: Pesquisar produtos existentes
    Dado que eu estou na página home do site
    Quando eu pesquisar pelo produto "Blouse"
    Então o produto "Blouse" deve ser listado na página de resultado da busca

Cenário 02: Pesquisar produtos não existentes
    Dado que eu estou na página home do site
    Quando eu pesquisar pelo produto "ItemNãoExistente"
    Então a página deve exibir uma mensagem de erro "No results were found for your search "ItemNãoExistente""

*** Keywords ***
