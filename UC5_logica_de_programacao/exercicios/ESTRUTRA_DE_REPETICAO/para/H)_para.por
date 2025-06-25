programa {
  funcao inicio() {

    inteiro contador, f, n

    para(contador = 1; contador <= 10; contador++){
      n = contador
      enquanto(n > 1){
        f = contador * n 
        n--
        

      }
      escreva("O valor do fatorial ", contador, " é ",f, "\n")


    }
    
  }
}
