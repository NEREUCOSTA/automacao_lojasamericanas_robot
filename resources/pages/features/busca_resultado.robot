*** Settings ***
resource  ${EXECDIR}/resources/main.robot
library  SeleniumLibrary

*** Variables ***
&{busca}
...  result_area=//*[@id="rsyswpsdk"]/div/main/div/div[3]/div[2]




*** Keyword ***
vejo na tela o produto "${produto_pesquisa}"
  Wait Until Element Contains  ${busca.result_area}  ${produto_pesquisa}
