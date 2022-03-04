*** Settings ***
resource  ${EXECDIR}/resources/main.robot


*** Keywords ***
abrir site
  Open Browser  https://www.americanas.com.br/  chrome
  Maximize Browser Window

fechar navegador
  Close All Browsers
