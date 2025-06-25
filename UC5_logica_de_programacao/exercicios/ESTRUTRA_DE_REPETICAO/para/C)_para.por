programa {
  funcao inicio() {

    inteiro contador, resultado, soma1, soma2, par
    resultado = 0
    soma1 = 0
    soma2 = 0
    para(contador = 1; contador <= 500; contador++){
      par = contador % 2
      escreva(contador,"\n")
      se(par == 0){
        escreva(contador)
        soma2 += soma1 + contador
      }

    }
    escreva("A soma total dos cem primeiros números inteiros ", (soma2) )
    
  }
}
