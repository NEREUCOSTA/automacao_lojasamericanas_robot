*** Settings ***
resource  ${EXECDIR}/resources/main.robot


*** Keywords ***
abrir site
  Open Browser  https://wwwhomolog.go.gov.br/  chrome  options=add_experimental_option("excludeSwitches",["enable-logging"]);add_argument("--disable-popup-blocking");add_argument("--no-sandbox");add_argument("--disable-web-security"); add_argument("--ignore-certificate-errors");add_argument("--allow-insecure-localhost");add_argument("--allow-cross-origin-auth-prompt")
  Maximize Browser Window

fechar navegador
  Close All Browsers
