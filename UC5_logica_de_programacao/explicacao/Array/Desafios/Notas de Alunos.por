programa
{
    funcao inicio()
    {
        cadeia nome[5]
        inteiro nota_aluno[5]
        inteiro media, soma = 0
        inteiro indice_maior = 0, indice_menor = 0

        escreva("Cadastro e Análise de Notas de Alunos\n")

        para(inteiro cont = 0; cont < 5; cont++)
        {
            escreva("Cadastre cinco nomes de alunos(as):\n")
            leia(nome[cont])
            limpa()
        }

        para(inteiro cont = 0; cont < 5; cont++)
        {
            escreva("Digite a nota do aluno(a): ", nome[cont], "\n")
            leia(nota_aluno[cont])
            soma = soma + nota_aluno[cont]

            // Verifica maior nota
            se (nota_aluno[cont] > nota_aluno[indice_maior])
            {
                indice_maior = cont
            }

            // Verifica menor nota
            se (nota_aluno[cont] < nota_aluno[indice_menor])
            {
                indice_menor = cont
            }

            limpa()
        }

        media = soma / 5

        para(inteiro cont = 0; cont < 5; cont++)
        {
            escreva("Aluno(a): ", nome[cont], ". Nota: ", nota_aluno[cont], "\n")
        }

        escreva("\nMédia geral da turma: ", media, "\n")
        escreva("Aluno com MAIOR nota: ", nome[indice_maior], " (Nota: ", nota_aluno[indice_maior], ")\n")
        escreva("Aluno com MENOR nota: ", nome[indice_menor], " (Nota: ", nota_aluno[indice_menor], ")\n")
    }
}
