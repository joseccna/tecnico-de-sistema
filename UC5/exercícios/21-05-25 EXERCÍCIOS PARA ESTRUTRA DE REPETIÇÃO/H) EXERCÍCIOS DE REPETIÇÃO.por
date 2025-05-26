programa 
{
	funcao inicio() 
	{
		inteiro num1, maior = 0, menor = 0, valor = 0
		
		escreva("Digite valores inteiros positivos. Digite um valor negativo para encerrar. ")
		leia(num1)

		enquanto (num1 > 0 ){
        escreva("Digite um valor: ")
        leia(num1)
        se(num1 > maior){
          maior = num1
        }se(num1 < maior e num1 > 0){
          valor = num1


        }

		    } 
    escreva("Valor maior digitado: ", maior, "\n", "Valor menor digitado: ", valor)

	}
}






