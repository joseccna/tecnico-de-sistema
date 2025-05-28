programa 
{
	funcao inicio() 
	{
		inteiro num1, num2, resultado
		
		escreva("Informe o primeiro numero para divisão: ")
		leia(num1)

		limpa()
	  escreva("Informe o seundo numero acima de 0: ")
	  leia(num2)

		
		enquanto (num2 == 0 ){
      escreva("Informe o seundo numero acima de 0: ")
		  leia(num2)

		}

		resultado = num1 / num2 
		escreva (num1, " / ", num2, " = ", resultado , "\n")

	}
}

