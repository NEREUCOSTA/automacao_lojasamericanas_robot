*** Settings ***
resource  ${EXECDIR}/resources/main.robot
library  SeleniumLibrary

*** Variables ***
&{home}
...  filter_search=//input[@formcontrolname="buscar"]
...  btn_search=//img[@alt="Pesquisar serviços"]
#...  btn_searchicon=//form[@action="/busca"]/button


*** keywords ***
estou na pagina home
  Wait Until Location Is    https://wwwhomolog.go.gov.br/
digito o nome do servico "${servico}" no campo search
  Wait Until Element Is Visible    ${home.filter_search}
  Input Text  ${home.filter_search}  ${servico}
  sleep  5s

clico no botão pesquisar
  # Wait Until Element Is Visible    ${home.btn_search}
  # Click Element                    ${home.btn_search}
  Press Keys  ${home.filter_search}  ENTER

