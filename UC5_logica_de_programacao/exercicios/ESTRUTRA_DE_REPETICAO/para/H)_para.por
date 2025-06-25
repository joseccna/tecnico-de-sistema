programa {
  funcao inicio() {

    inteiro contador, f, n

    para(contador = 1; contador <= 10; contador++){
       se(contador % 2 != 0){
        f = 1
        n = contador
        
        enquanto(n > 1){
          f = f * n 
          n--
          
        }
      escreva("O valor do fatorial de ", contador, " é ",f, "\n")
       }

    }
    
  }
}
