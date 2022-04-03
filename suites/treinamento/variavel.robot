*** Settings ***
Documentation  treinamento com variaveis
Library  SeleniumLibrary
#Suite Setup
#Suite Teardown


*** Variables ***
#as varivavel são globais - em toda a suite do teste
${meu_nome}  Nereu
&{pessoa}
...  nome=Nereu
...  time=flamengo
...  rg=1138483

@{frutas}  manga  maça  abacate



*** Test Cases ***
Usando variaveis globais
  imprimir a variavel na tela
  Instanciar variavel de idade

Usando variaveis declarada na keyword
  imprimir idade

Usando variaves do tipo dicionario
  imprimir dados pessoa

Usando variaves do tipo lista
  imprimir frutas

informaçoes sobre mim
  imprimir minhas informaçoes

*** Keyword ***
imprimir a variavel na tela
  Log To Console  \n meu nome é: ${meu_nome}

imprimir idade
 # printar no console
  Log To Console  \n minha idade é: ${idade}

Instanciar variavel de idade
  # a keyword Evaluate serve para operações matematicas
  ${idade}  Evaluate  3+1
  #possibilita a varivavel ser vista dentro do caso de teste
  Set Global Variable  ${idade}

imprimir dados pessoa
  Log To Console  \n meu nome é: ${pessoa.nome}
  Log To Console  \n meu time é: ${pessoa.time}
  Log To Console  \n meu rg é:   ${pessoa.rg}

imprimir frutas
  Log To Console  \n lista de frutas ${frutas}

imprimir minhas informaçoes
    FOR  ${i}  IN  @{frutas}
        Log To Console    fruta ${i}
    END
