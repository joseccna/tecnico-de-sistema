programa {
  funcao inicio() {

    escreva("Digite quantas maçãs foram compradas!")
    escreva("\n")
    inteiro num1
    real valor
    escreva("Digite quantas maçãs: ")
    leia(num1)
    se(num1 < 12){
      valor = num1 * 1.30
      escreva("O valor total da compra é ", valor)
    } senao{
      valor = num1 * 1.00
      escreva("O valor total da compra é ", valor)
    }


    
  }
}