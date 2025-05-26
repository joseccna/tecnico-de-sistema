programa {
  funcao inicio() {

    escreva("Verifique se você poderá votar!")
    escreva("\n")
    inteiro ano, nascimento, voto
    escreva("Digite o ano atual: ")
    leia(ano)
    escreva("Digite o ano do seu nascimento: ")
    leia(nascimento)
    voto = ano - nascimento
    se(voto >= 16){
      escreva("Você poderá votor!")
    } senao{
      escreva("Você não poderá votar!")
    }


    
  }
}