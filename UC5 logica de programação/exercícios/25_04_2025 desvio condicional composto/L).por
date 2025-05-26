programa {
  funcao inicio() {

    escreva("Verificar saldo!")
    escreva("\n")
    inteiro conta_cliente
    real saldo_atual, saldo, debito, credito
    escreva("Digite a conta do cliente: ")
    leia(conta_cliente)
    escreva("Digite o saldo: ")
    leia(saldo)
    escreva("Digite o débito: ")
    leia(debito)
    escreva("Digite o crédito: ")
    leia(credito)
    saldo_atual= (saldo - debito) + credito
    se(saldo_atual >= 0){
      escreva("O saldo atual: R$", saldo_atual, " Saldo Positivo")
    } senao{
      escreva("O saldo atual: R$", saldo_atual, " Saldo Negativo")
    }


    
  }
}