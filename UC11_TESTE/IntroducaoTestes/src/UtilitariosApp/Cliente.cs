using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UtilitariosApp
{
    public class Cliente
    {
        // Propriedades da classe Cliente
        public int id { get; set; }
        public string nome { get; set; }
        public string email { get; set; }

        public Endereco endereco { get; set; }



        // Construtor da classe Cliente
        public Cliente(int id, string nome, string email, Endereco endereco )
        {
            this.id = id;
            this.nome = nome;
            this.email = email;
            this.endereco = endereco;
        }


        // Método para obter informações do cliente
        public string ObterInformacoes()
        {
            return $"ID: {id}\nNome: {nome}\nEmail: {email}\nEndereço: {endereco.FormatarEndereco()}";
        }


        // Método para validar o email do cliente
        public bool EmailValido()
        {
            return email.Contains("@") && email.Contains(".");
        }

    }

    public class Endereco
    {

        // Propriedades da classe Endereco
        public string Rua { get; set; }

        public int  Numero { get; set; }
        public string Cidade { get; set; }
        public string Estado { get; set; }

        // Construtor da classe Endereco
        public Endereco(string rua, int numero, string cidade, string estado)
        {
            Rua = rua;
            Numero = numero;
            Cidade = cidade;
            Estado = estado;
        }

        // Método para formatar o endereço completo
        public string FormatarEndereco()
        {
            return $"{Rua}, {Numero}, {Cidade} - {Estado}";
        }


    }


}
