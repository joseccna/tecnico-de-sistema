programa
{
	
	funcao inicio()
	{
	real eleitores, votos_brancos, votos_nulos, votos_validos
	inteiro por_brancos, por_nulos, por_validos
	
	escreva("Porcentagem dos votos")
	escreva("\na")
	escreva("digite a quantidade de eleitores de um minicípio: ")
	leia(eleitores)
	escreva("Digite a quantidade de votos em brancos: ")
	leia(votos_brancos)
	escreva("Digite a quantidade de votos nulos: ")
	leia(votos_nulos)
	escreva("Digite a quantidade de votos validos: ")
	leia(votos_validos)

	por_brancos = (votos_brancos / eleitores) * 100
	por_nulos = (votos_nulos / eleitores) * 100
	por_validos = (votos_validos / eleitores) * 100

	escreva("Votos em brancos : ", por_brancos, "%" )
	escreva(" Votos em nulos : ", por_nulos, "%" )
	escreva(" Votos em validos : ", por_validos, "%" )
		
		
		
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 744; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */