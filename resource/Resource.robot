*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BROWSER}            chrome
${URL}                https://www.magazineluiza.com.br/
${CAMPO_PESQUISA}     id=input-search
${BUTTOM_SEARCH}      css:svg[data-testid="search-submit"]
${TITLE_PAGE}         Magazine Luiza | Pra você é Magalu!

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
    Click Element                       ${BUTTOM_SEARCH}
    Wait until element is visible       css:span[title="Resultados para "]
    Element Text Should Be    //*[@id="__next"]/div/main/section[4]/div[1]/div/h1    ${PESQUISA}

Conferir se o produto "${PESQUISA}" foi listado no site
