programa {
  funcao inicio() {
    
    cadeia nome[5]

    para(inteiro cont = 0;cont<=4;cont++){
      escreva("Digite a posição ", cont, ": ")
      leia(nome[cont])
      limpa()
    }

    para(inteiro cont = 0; cont <=4; cont++){
      escreva(cont, ": ", nome[cont], "\n")
      
    }
    
  }
}
