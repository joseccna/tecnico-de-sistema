programa {
  funcao inicio() {

    escreva("Calcular salario!")
    escreva("\n")
    inteiro hora_trabalhada
    real valor_hora, salario, extra, valor_extra
    escreva("Digite as horas trabalhadas: ")
    leia(hora_trabalhada)
    escreva("Digite o salário por hora: ")
    leia(valor_hora)
    se(hora_trabalhada <= 160){
    salario = hora_trabalhada * valor_hora   
      escreva("o salário total do funcionário é: R$", salario)
    } senao{
    extra = (hora_trabalhada - 160) * valor_hora
    escreva(extra)
    valor_extra = extra * 0.5
    salario = (hora_trabalhada * valor_hora) + valor_extra
      escreva("o salário total do funcionário com extra é: R$", salario)
    }


    
  }
}