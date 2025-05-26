programa {
  funcao inicio() {

    escreva("Tempo do jogo xadrez!")
    escreva("\n")
    inteiro inicio, fim, horas
    escreva("Digite em qual hora iniciou o jogo: ")
    leia(inicio)
    escreva("Digite em qual hora terminou o jogo : ")
    leia(fim)
    se(inicio < fim){
    horas = fim - inicio  
      escreva("A duração do jogo em hora foi de : ", horas)
    } senao{
    horas = (fim + 24 )- inicio  
      escreva("A duração do jogo em hora foi de  : ", horas)
    }


    
  }
}