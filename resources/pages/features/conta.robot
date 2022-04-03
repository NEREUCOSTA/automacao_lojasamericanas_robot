*** Settings ***
resource  ${EXECDIR}/resources/main.robot
library  SeleniumLibrary

*** Variables ***
&{busca}
...  result_area=//html/body/app-root/app-main/div/div/app-sidenav/div/div
...  field_numero_conta=//input[@formcontrolname="unidade"]
...  field_digito=//div[@class="mat-form-field-flex ng-tns-c152-12"]
...  field_cpf=//input[@placeholder="Informe o CPF ou CNPJ"]
...  btn_consultar=//button[@class="consultaBtn"]


*** keywords ***
digito no campo numero da conta
    Wait Until Element Is Visible    ${busca.field_numero_conta}
    input text                       ${busca.field_numero_conta}  54015  

clico no campo digito
    Wait Until Element Is Visible    ${busca.field_digito}
    input text                       ${busca.field_digito}  3  

clico no campo CPF
    Wait Until Element Is Visible    ${busca.field_cpf}
    input text                       ${busca.field_cpf}  83969713153​   

clico no botao consultar
    Wait Until Element Is Visible    ${busca.field_cpf}
    Click Element                    ${busca.field_cpf}



