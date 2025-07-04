programa {
  funcao inicio() {

    inteiro idioma=0
    cadeia pais[8] = {"Japão – idioma oficial Japonês","Holanda - idioma oficial holandês",
    "Austrália – idioma oficial Inglês","Brasil – idioma oficial Português",
    "Portugal – idioma oficial Português","Lituânia – idioma oficial Lituano",
    "Azerbaijão – idioma oficial Azeri","Alemanha – idioma oficial Alemão"}

    escreva("Digite o numero conrrespondete ao País para saber o idioma oficial\n")
    escreva("1-Japão, 2-Holanda, 3-Austrália, 4-Brasil, 5-Portugal, 6-Lituânia, 7-Azerbaijão, 8-Alemanha\n")
    leia(idioma)
    enquanto(idioma <= 0 ou idioma >8 ){
      limpa()
      escreva("Escolha um país válido!\n")
      escreva("1-Japão, 2-Holanda, 3-Austrália, 4-Brasil, 5-Portugal, 6-Lituânia, 7-Azerbaijão, 8-Alemanha\n")
      leia(idioma)
    }
    idioma -= 1
    limpa()
    escreva(pais[idioma])
  }
}