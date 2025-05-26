programa
{
	
	funcao inicio()
	{
	real lucro, imposto, carro
	real custo_final, total_lucro, total_imposto
	
	
	escreva("Valor final do carro para o consumidor")
	escreva("\n")
	escreva("Digite o custo da fabricação do carro: ")
	leia(carro)
	lucro = 28
	imposto = 45

	total_lucro = (lucro / 100 * carro) 
	total_imposto = (imposto / 100 * carro)
	custo_final = carro + total_lucro + total_imposto
	escreva("O valor final é: ", "R$", custo_final)






	
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 174; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */