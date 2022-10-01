*** Settings ***
Resource  ../Resources/variables.robot
Documentation  Arlison Marreiro Nascimento


*** Test Cases ***
#Questão 1
1 - Exercício Dicionário
    [Tags]   dicionario
#  Exibir nome, idade, rua, numero, cep, bairro, cidade e estado no console a partir de um dicionário
    Log to console  \n${DADOS}


#Questão 2
#  Criar uma keyword que receba idade e retorne o ano de nascimento
#  Se o ano for menor que 2000, exibir mensagem dizendo que nasceu no século passado
2 - Exercício Argumentos e Retornos + If Simples
    [Tags]   if  simples
    Log To Console  \n${idade} anos
    ${ano} =  Evaluate  2022 - ${idade}
    Log to console  \nNasceu no ano de ${ano}
    IF  ${ano} < 2000  
        Log to console  Nasceu no século passado
    END



#  Exiba cada uma das frutas de uma lista usando um For Simples
#Questão 3
3 - Exercício For Simples + Lista
    [tags]      lista   
    FOR  ${fruta}  IN  @{frutas}
        Log to console  ${fruta}
    END


#  Crie um loop que conte quantos números par existem entre 0 e 10, usando if inline
#Questão 4
4 - Exercício If Inline + For in Range
    [tags]      inline
    FOR  ${numero}  IN RANGE  0  11 
        IF  ${numero} % 2 == 1  CONTINUE
            ${contador} =  Evaluate  ${contador} + 1
            Log to console  \n${numero}       
    END
    Log To Console  o FOR tem ${contador} números pares


#A partir da lista ["A", 1, "B", 2, "C" e 3], adicionar somente os números numa nova lista, 
#tratar os caracteres como exceção e exibir a nova lista a cada iteração usando Finally.
5 - Exercício Try + Except + Finally
    [Tags]  try
    FOR  ${item}  IN  @{lista}
        TRY
            ${lista_nova} =  Evaluate  ${lista_nova} + [${item}]
        EXCEPT
            Log To Console  \n${item} não é um número
        FINALLY
            Log To Console  \na nova lista com apenas numeros${lista_nova}
        END
    END
    



    
    
    














