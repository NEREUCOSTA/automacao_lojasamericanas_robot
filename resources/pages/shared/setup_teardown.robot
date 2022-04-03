*** Settings ***
resource  ${EXECDIR}/resources/main.robot


*** Keywords ***
abrir site
  Open Browser  https://wwwhomolog.go.gov.br/  chrome
  Maximize Browser Window

fechar navegador
  Close All Browsers
