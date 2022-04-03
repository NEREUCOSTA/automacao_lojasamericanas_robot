*** Settings ***
resource  ${EXECDIR}/resources/main.robot

Suite Setup  abrir site
Suite Teardown  fechar navegador

*** Test Case ***
Cenário 1: realizar pesquisa de servico
  Dado que estou na pagina home
  Quando digito o nome do servico "Emitir segunda via da fatura de água e ou esgoto" no campo search
  E clico no botão pesquisar
  Então vejo na tela o servico "Emitir segunda via da fatura de água e ou esgoto"

Cenário 2 : acessar conta
  [tags]  2  smoke
  Dado que pesquiso o servico "Emitir segunda via da fatura de água e ou esgoto"
  Quando clico no botao acessar
  E clico botao continuar sem login
  Entao vejo a tela Emitir segunda via da fatura de água e/ou esgoto

Cenário 3: buscar fatura pela conta
  Dado que estou na tela Emitir segunda via da fatura de água e/ou esgoto
  Quando clico no campo numero da conta
  E clico no campo digito
  E clico no campo CPF
  E clico no botao consultar
  Então vejo a tela Faturas em Aberto

      



   
