programa
{
	
	funcao inicio()
	{
	inteiro ano, mes, dia, resultado, total_ano
	escreva("Digite o ano do seu nascimento: ")
	leia(ano)
	escreva("Digite o numero do Mê do seu nascimento: ")
	leia(mes)
	escreva("Digite o dia do seu nascimento: ")
	leia(dia)
	total_ano = 2025 - ano
	resultado = (365 * total_ano) + (30 * mes) + dia
	escreva("A sua idada em dias é: ", resultado)

	
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 305; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */