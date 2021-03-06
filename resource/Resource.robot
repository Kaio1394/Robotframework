*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BROWSER}               chrome
${URL}                   https://www.magazineluiza.com.br/
${CAMPO_PESQUISA}        id=input-search
${BUTTOM_SEARCH}         css:svg[data-testid="search-submit"]
${TITLE_PAGE}            Magazine Luiza | Pra você é Magalu!
${TEXTO_ESPERA}          css:span[title="Resultados para "]
${TEXTO_PRODUTO}         //*[@id="__next"]/div/main/section[4]/div[1]/div/h1
${XPATH_PRODUTO}         //*[@id="__next"]//*[@src="https://a-static.mlcdn.com.br/280x210/snowrunner-ps4-sony/bluewavesgame/31052027/b852dbe6e22f99b3f3ec93116953ce5b.jpg"]
${FRASE_VISIVEL_PAGINA}  //*[@id="__next"]//*[@data-testid="text-list-title"]
*** Keywords ***
Abrir navegador
    Open Browser     about:blank        ${BROWSER}

Fechar navegador
    Close Browser

#### Passo-a-Passo
# Caso 01:
Acessar página home do site
    Go To                               ${URL}
    Title Should Be                     ${TITLE_PAGE}

Digitar o nome "${PESQUISA}" a ser pesquisado
    Wait until element is visible       ${CAMPO_PESQUISA}
    Input Text    ${CAMPO_PESQUISA}     ${PESQUISA}

Clicar no botão Pesquisar
    Wait until element is visible       ${BUTTOM_SEARCH}
    Click Element                       ${BUTTOM_SEARCH}

Conferir se o produto "${PESQUISA}" foi listado no site
    Wait until element is visible       ${TEXTO_ESPERA}
    Element Text Should Be              ${TEXTO_PRODUTO}    ${PESQUISA}
    Page Should Contain Image           ${XPATH_PRODUTO}

# Caso 02:
Digitar o nome do produto "${PESQUISA_DADO_INVALIDO}" no campo de pesquisa
    Wait until element is visible       ${CAMPO_PESQUISA}
    Input Text                          ${CAMPO_PESQUISA}     ${PESQUISA_DADO_INVALIDO}

Clicar no botão Pesquisar.
    Wait until element is visible       ${BUTTOM_SEARCH}
    Click Element                       ${BUTTOM_SEARCH}
    Sleep    5s

Conferir mensagem de erro "${MENSAGEM_ERRO}"
    Wait Until Element Is Visible    ${FRASE_VISIVEL_PAGINA}
    Page Should Contain    ${MENSAGEM_ERRO}
