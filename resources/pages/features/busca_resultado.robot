*** Settings ***
resource  ${EXECDIR}/resources/main.robot
library  SeleniumLibrary

*** Variables ***
&{busca}
...  result_area=//html/body/app-root/app-main/div/div/app-sidenav/div/div
...  btn_acessar=//html/body/app-root/app-main/div/div/app-sidenav/div/div/div[2]/app-servicos/div/div[1]/app-servico-item/div/div[1]/div[2]/app-botao-acessar
...  btn_continuar_sem_login=//button[@data-hover="Continuar sem login"]

*** Keyword ***
vejo na tela o servico "${servico_pesquisa}"
  Wait Until Element Contains  ${busca.result_area}  ${servico_pesquisa}
  #Sleep  2s 

clico no botao acessar
    Wait Until Element Is Visible  ${busca.btn_acessar}
    Click Element                  ${busca.btn_acessar}
    #Sleep  2s

clico botao continuar sem login
    Wait Until Element Is Visible  ${busca.btn_continuar_sem_login}
    Click Element                  ${busca.btn_continuar_sem_login} 

vejo a tela Emitir segunda via da fatura de água e/ou esgoto
    Wait Until Page Contains    Emitir segunda via da fatura de água e/ou esgoto
    #Sleep  5s

pesquiso o servico "${servico}"
   estou na pagina home
   digito o nome do servico "${servico}" no campo search
   clico no botão pesquisar
   vejo na tela o servico "${servico}"

acesso o serviço "${servico}"
  pesquiso o servico "${servico}"
  #Sleep    5
  clico no botao acessar
  clico botao continuar sem login
  vejo a tela Emitir segunda via da fatura de água e/ou esgoto