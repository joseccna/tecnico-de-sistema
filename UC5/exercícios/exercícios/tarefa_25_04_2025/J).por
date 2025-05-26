programa {
  funcao inicio() {
      real altura 
      inteiro peso_indeal
      cadeia nome, sexo
      escreva("Digite seu nome: ")
      leia(nome)
      escreva("Digite M para sexo masculino ou F para feminino: ")
      leia(sexo)
      escreva("Digite sua altura com ponto em vez da virgula: ")
      leia(altura)
      se(sexo == "M"){
          peso_indeal = (72.7 * altura) - 58
      escreva("O peso ideal é: ", peso_indeal)
      }
      senao{
        peso_indeal = (62.1 * altura)- 44.7
        escreva("O peso ideal é: ", peso_indeal)
      }



//esta faltando ler a variavel altura.





    
  }
}
