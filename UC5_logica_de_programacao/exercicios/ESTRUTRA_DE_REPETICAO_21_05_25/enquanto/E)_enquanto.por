programa
{
    funcao inicio()
    {
		inteiro num = 0, par, valor = 0
		
		enquanto (num < 500){
          num++
          par = num % 2
          se (par == 0 ){
            valor +=  num 
      escreva("A somatoria do valor ", num, " é ", valor, "\n")
          }
		}
    }
}
