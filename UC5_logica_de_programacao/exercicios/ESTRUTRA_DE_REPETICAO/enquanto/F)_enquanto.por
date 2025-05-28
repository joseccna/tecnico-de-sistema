programa 
{
	funcao inicio() 
	{
		real num1, num2, resultado
		
		escreva("Informe a primeira nota: ")
		leia(num1)
    
		enquanto (num1 < 0 ou num1 > 10 ){
      escreva("Valor incorreto! ", "\n", "Informe a primeira nota corretamente: ")
		  leia(num1)
      
		}
    limpa()
		escreva("Informe a segunda nota: ")
		leia(num2)
    

		enquanto (num2 < 0 ou num2 > 10 ){
      escreva("Valor incorreto! ", "\n", "Informe a segunda nota corretamente: ")
		  leia(num2)
      
		}

		resultado = (num1 + num2) / 2 
		escreva ("A média da nota é", " = ", resultado , "\n")

	}
}
