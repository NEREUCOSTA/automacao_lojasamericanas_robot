*** Settings ***
resource  ${EXECDIR}/resources/main.robot

Suite Setup  abrir site
Suite Teardown  fechar navegador

*** Test Case ***
Cenário: realizar pesquisa de Produto
  Dado que estou na pagina home
  Quando digito o nome do Produto "Bola Mikasa Futevôlei Ft5 Original Preto E Amarelo" no campo search
  E clico no botão pesquisar
  Então vejo na tela o produto "bola mikasa futevôlei ft5 original preto e amarelo"
