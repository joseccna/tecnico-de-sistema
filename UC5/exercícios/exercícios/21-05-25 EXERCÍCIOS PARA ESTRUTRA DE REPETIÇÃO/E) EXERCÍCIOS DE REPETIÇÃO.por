programa
{
    funcao inicio()
    {
		inteiro contador, par, valor = 0
		
		para (contador= 1; contador <= 500; contador++ ){
          par = contador % 2
          se (par == 0 ){
            valor +=  contador 
      escreva("A somatoria do valor ", contador, " é ", valor, "\n")
          }
		}
    }
}
