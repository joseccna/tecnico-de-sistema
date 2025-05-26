programa {
  funcao inicio() {
    
    inteiro num1,num2,resultado
    cadeia operacao

    escreva("Calculadora \n")
    escreva("Digite o primeiro numero: ")
    leia(num1)
    escreva("Digite o numero correspondente da operação desejada: \n")
    escreva("soma (10), subtração (20), multiplicação (30) ou divisão (40): \n")
    leia(operacao)
    escreva("Digite o segundo numero: \n")
    leia(num2)

    escolha (operacao)
    {
      caso "10":
        resultado = num1 + num2
        escreva("O resultado da operação soma é: ", resultado)
        pare

      caso "20":
        resultado = num1 - num2
        escreva("O resultado da operação subtração é: ", resultado)
        pare
      caso "30":
        resultado = num1 * num2
        escreva("O resultado da operação multiplicação é: ", resultado)
        pare
      caso "40":
        resultado = num1 / num2
        escreva("O resultado da operação divisão é: ", resultado)
        pare

      caso contrario:
        escreva("opção invalida")

    }


  }
}
