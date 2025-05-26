programa 
{
	funcao inicio() 
	{
		inteiro num1, num2, num3, num4, resultado, contador
		
		escreva("Informe a primeira nota: ")
		leia(num1)
    num2 = num1

		enquanto (num1 < 0 ou num2 > 10 ){
      escreva("Valor incorreto! ", "\n", "Informe a primeira nota corretamente: ")
		  leia(num1)
      num2 = num1

		}
    limpa()
		escreva("Informe a segunda nota: ")
		leia(num3)
    num4 = num3

		enquanto (num3 < 0 ou num4 > 10 ){
      escreva("Valor incorreto! ", "\n", "Informe a segunda nota corretamente: ")
		  leia(num3)
      num4 = num3

		}

		resultado = (num1 + num3) / 2 
		escreva ("A média da nota é", " = ", resultado , "\n")

	}
}
