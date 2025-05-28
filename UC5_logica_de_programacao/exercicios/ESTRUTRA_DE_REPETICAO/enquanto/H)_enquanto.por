programa 
{
    funcao inicio() 
    {
        inteiro num1, maior, menor
        logico primeiro = verdadeiro

        escreva("Digite valores inteiros positivos para continuar o programa.\n")
        escreva("Digite um valor negativo para encerrar o programa.\n")
        escreva("Digite um valor: ")
        leia(num1)

        enquanto (num1 >= 0) 
        {
            // Se for a primeira vez, inicializa maior e menor
            se (primeiro) 
            {
                maior = num1
                menor = num1
                primeiro = falso
            } 
            senao 
            {
                se (num1 > maior) 
                {
                    maior = num1
                }
                se (num1 < menor) 
                {
                    menor = num1
                }
            }

            escreva("Digite um valor: ")
            leia(num1)
        }

        escreva("Valor maior digitado: ", maior, "\n")
        escreva("Valor menor digitado: ", menor, "\n")
    }
}
