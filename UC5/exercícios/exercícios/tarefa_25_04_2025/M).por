programa {
  funcao inicio() {

    escreva("Estoque!")
    escreva("\n")
    inteiro atual, maxima, minima, media
    escreva("Digite quantidade atual em estoque: ")
    leia(atual)
    escreva("Digite quantidade máxima em estoque: ")
    leia(maxima)
    escreva("Digite quantidade mínima em estoque: ")
    leia(minima)
    media = (maxima + minima) / 2
    se(atual >= media){
      escreva("Não efetuar compra")
    } senao{
      escreva("Efetuar compra")
    }


    
  }
}
