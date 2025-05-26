programa {
  funcao inicio() {

    escreva("Digite dois valores!")
    escreva("\n")
    inteiro num1, num2, maior
    escreva("Digite o primeiro numero: ")
    leia(num1)
    escreva("Digite o segundo numero: ")
    leia(num2)
    se(num1>num2){
      escreva("Maior: ", num1, "\n", "Menor ", num2)
    } senao{
      escreva("Maior: ", num2, "\n", "Menor ", num1)
    }


    
  }
}