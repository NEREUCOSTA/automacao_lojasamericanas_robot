*** Settings ***
resource  ${EXECDIR}/resources/main.robot

*** Variables ***
&{conta}
...  result_area=//html/body/app-root/app-main/div/div/app-sidenav/div/div
...  field_numero_conta=//input[@formcontrolname="unidade"]
...  field_digito=//div[@class="mat-form-field-flex ng-tns-c152-12"]
...  field_cpf=//input[@placeholder="Informe o CPF ou CNPJ"]
...  btn_consultar=//button/span[text()="Consultar"]

*** keywords ***
digito "${nrconta}" no campo numero da conta
    Wait Until Element Is Visible    ${conta.field_numero_conta}
    input text                       ${conta.field_numero_conta}  ${nrconta}   

digito "${digito}" no campo dígito
    Wait Until Element Is Visible    ${conta.field_digito}
    Press Keys                       ${conta.field_digito}  ${digito}   

digito "${cpf}" no campo CPF
    Wait Until Element Is Visible    ${conta.field_cpf}
    input text                       ${conta.field_cpf}  ${cpf}  

clico no botao consultar
    Wait Until Element Is Visible    ${conta.btn_consultar}
    Click Element                    ${conta.btn_consultar}

vejo a tela Faturas em Aberto
    Wait Until Page Contains  Faturas em Aberto
    Sleep  10s
    