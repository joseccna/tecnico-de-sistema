programa {
  funcao inicio() {
    
    cadeia nome[5]

    escreva("Digite um nome: ")
    leia(nome[1])

    para(inteiro cont = 0;cont<=4;cont++){
      escreva(cont, ": ", nome[cont], "\n")
    }

    //escreva(nome[1])
  }
}
