# Robotframework
Testando o RobotFramework no site da Magalu com o intuito de aprender conceitos básicos da ferramenta.

Referências de estudos:
      
      https://github.com/robotframework/robotframework
      https://www.udemy.com/course/automacao-de-testes-com-robot-framework-basico/

Foi utlizado o modelo procedural e Gherkin para a escrita dos cenários de testes.

### Procedural:
```
Pesquisar produtos existentes
    Digitar o nome "${PESQUISA}" a ser pesquisado
    Clicar no botão Pesquisar
    Conferir se o produto "${PESQUISA}" foi listado no site

Pesquisar produtos inexistentes
    Digitar o nome do produto "${PESQUISA_DADO_INVALIDO}" no campo de pesquisa
    Clicar no botão Pesquisar.
    Conferir mensagem de erro "${MENSAGEM_ERRO}"
```

### Gherkin:
```
Cenário 01: Pesquisar produtos existentes
    Dado que eu estou na página home do site
    Quando eu pesquisar pelo produto "Blouse"
    Então o produto "Blouse" deve ser listado na página de resultado da busca

Cenário 02: Pesquisar produtos não existentes
    Dado que eu estou na página home do site
    Quando eu pesquisar pelo produto "ItemNãoExistente"
    Então a página deve exibir uma mensagem de erro "No results were found for your search "ItemNãoExistente""
```

### Execução do script

Para executar o código basta abrir o terminal da IDE, no caso do Atom, terá que adicionar um pacote do terminal.

Para a instalação de pacotes via terminal, basta dar o comando: ``` apm install nome-do-pacote```.

E para pesquisar alguma pacote existente: ``` apm search nome-do-pacote```.

E por fim, executando o código: ```robot -d .\results -L trace tests\TestSitePractice.robot```. O "-d .\nome-da-pasta" funciona para direcionar os arquivos de log e report, por default os arquivos são direcionados para a pasta raiz. Já o "-L trace" traz mais detalhes para o report.
