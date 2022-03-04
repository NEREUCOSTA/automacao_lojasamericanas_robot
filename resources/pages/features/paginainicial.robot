*** Settings ***
resource  ${EXECDIR}/resources/main.robot
library  SeleniumLibrary

*** Variables ***
&{home}
...  filter_search=//input[@name="conteudo"]
...  btn_search=//button[@name="submit_search"]
...  btn_searchicon=//form[@action="/busca"]/button


*** keywords ***
estou na pagina home
  Wait Until Location Is    https://www.americanas.com.br/

digito o nome do Produto "${produto}" no campo search
  Wait Until Element Is Visible    ${home.filter_search}
  Input Text  ${home.filter_search}  ${produto}
  sleep  10s

clico no botão pesquisar
    Click Element  ${home.btn_searchicon}
