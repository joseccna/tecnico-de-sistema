programa {
  funcao inicio() {
    real salario_total, salario, valor_vendido, venda_total, porcentagem, comissao
    inteiro carro_vendido
    escreva("Controle de salário!")
    escreva("\na")
    escreva("Digite o numero de carros vendidos: ")
    leia(carro_vendido)
    escreva("Digite o valor total das vendas: ")
    leia(venda_total)
    escreva("Digite o valor do salário: ")
    leia(salario)
    escreva("Digite o valor da comissão de carro vendido")
    leia(valor_vendido)
    comissao = valor_vendido * carro_vendido
    porcentagem =  ( 5 / 100 * venda_total)
    salario_total = salario + comissao + porcentagem
    escreva("Salário final do vendedor é: ", salario_total)






  }
}
