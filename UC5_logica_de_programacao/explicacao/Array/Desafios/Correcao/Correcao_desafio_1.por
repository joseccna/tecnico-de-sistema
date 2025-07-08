programa
{
  funcao inicio()
  {
    cadeia pais[8] = {"Japão","Holanda", "Australia", "Brasil", "Portugal", "Azerbaijão", "Lituania", "Alemanha"}
    cadeia idiomas[8] = {"Japones", "Holandes", "Inglês", "Português", "Português", "Azerbaijano", "Lituano", "Alemão"}
    inteiro cont, escolhas
    cadeia decisao = "S"

    escreva("Escolha o país para visualizar seu idioma: \n")

    enquanto (decisao=="S") {
    para (cont = 0; cont<=7; cont++) {
      escreva(cont, " - ", pais[cont], "\n")
    }

    escreva("Digite o número do pais: ")
    leia(escolhas)

      se(escolhas>=0 e escolhas<=7){
        escreva("O idioma é: ", idiomas[escolhas], "\n")
      } senao {
        escreva("Escolha um pais valido!\n")
      }
    escreva ("Deseja fazer uma nova consulta? [S/N]\n")
    leia(decisao)
    limpa()
    }
  }
}