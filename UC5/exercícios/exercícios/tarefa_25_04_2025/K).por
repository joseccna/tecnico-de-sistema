programa {
  funcao inicio() {

    escreva("salario fixo!")
    escreva("\n")
    real salario_fixo, extra, valor_venda, salario_total
    escreva("Digite o salário fixo: ")
    leia(salario_fixo)
    escreva("Digite o valor das vendas: ")
    leia(valor_venda)    
    se(valor_venda > 1500.00){
        extra = valor_venda * 0.5
        salario_total = salario_fixo + extra
      escreva("o salário total do funcionário é: R$", salario_total)
    } senao{
        extra = valor_venda * 0.3
        salario_total = salario_fixo + extra
      escreva("o salário total do funcionário é: R$", salario_total)
    }


    
  }
}