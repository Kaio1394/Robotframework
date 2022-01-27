*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BROWSER}            chrome
${URL}                https://www.google.com
${CAMPO_PESQUISA}     css:input[name="q"]
${BUTTOM_SEARCH}      name=btnK
${TITLE_PAGE}         Google
${TITLE_PAGE_SARCH}   Atlético MG - Pesquisa Google
*** Keywords ***
Abrir navegador
    Open Browser     about:blank     ${BROWSER}

Fechar navegador
    Close Browser

#### Passo-a-Passo
Acessar a página home do site
    Go To               ${URL}
    Title Should Be     ${TITLE_PAGE}

Digitar o nome "${PESQUISA}" a ser pesquisado
    Wait until element is visible       ${CAMPO_PESQUISA}
    Input Text    ${CAMPO_PESQUISA}     ${PESQUISA}

Clicar no botão Pesquisar
    Wait until element is visible       ${BUTTOM_SEARCH}
    Click Button                        ${BUTTOM_SEARCH}
    Title Should Be                     ${TITLE_PAGE_SARCH}
    # Submit form
    # Title Should Be    ${PESQUISA} - Pesquisa Googdle
