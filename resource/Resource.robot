*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BROWSER}      chrome
${URL}          https://www.google.com
# ${PESQUISA}     Atlético MG
*** Keywords ***
Abrir navegador
    Open Browser     about:blank     ${BROWSER}

Fechar navegador
    Close Browser

#### Passo-a-Passo
Acessar a página home do site
    Go To    ${URL}
    Title Should Be    Google

Digitar o nome "${PESQUISA}" a ser pesquisado
    Input Text    css:input[name="q"]     ${PESQUISA}
