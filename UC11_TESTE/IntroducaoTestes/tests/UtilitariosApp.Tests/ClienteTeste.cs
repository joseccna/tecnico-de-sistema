using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UtilitariosApp;

namespace UtilitariosApp.Tests
{
    public class ClienteTeste
    {
        [Fact]
        public void Cliente_DeveterPropriedadesCorrestas()
        {
            // Arrange
            var endereco = new Endereco("Rua A", 123, "Cidade B", "Estado C");
            int id = 1;
            string nome = "João";
            string email = "joao@example.com";


            // Act
            var cliente = new Cliente(id, nome, email, endereco);

            // Assert
            Assert.NotNull(cliente);// Verifica se o cliente não é nulo
            Assert.Equal(id, cliente.id);// Verifica se o id do cliente é igual ao id esperado
            Assert.Equal(nome, cliente.nome);// Verifica se o nome do cliente é igual ao nome esperado
            Assert.Equal(email, cliente.email);// Verifica se o email do cliente é igual ao email esperado
            Assert.NotNull(endereco); // Verifica se o endereço não é nulo
        }
        [Fact]
        public void Cliente_DeveContibuirEnderecoCorreto()
        {
            // Arrange
            var endereco = new Endereco("Rua A", 123, "Cidade B", "Estado C");
            int id = 1;
            string nome = "João";
            string email = "joao@example.com";


            // Act
            var cliente = new Cliente(id, nome, email, endereco);
            var enderecoFormatado = cliente.endereco.FormatarEndereco();

            // Assert
            Assert.Equal("Rua A, 123, Cidade B,  Estado C", enderecoFormatado); // Verifica se o endereço formatado é igual ao endereço esperado

        }

        [Fact]
        public void EvailValido_comEmailCorreto_DevetrtrornaVerdadeiro()
        {
            // Arrange
            var endereco = new Endereco("Rua A", 123, "Cidade B", "Estado C");
            int id = 1;
            string nome = "João";
            string email = "joao@example.com";

            // Act
            var cliente = new Cliente(id, nome, email, endereco);
            var emailValido = cliente.EmailValido();

            // Assert
            Assert.True(emailValido); // Verifica se o email é considerado válido

        }



        [Fact]
        public void EvailValido_SemArroba_DeveRetornarFalso()
        {
            // Arrange
            var endereco = new Endereco("Rua A", 123, "Cidade B", "Estado C");
            int id = 1;
            string nome = "João";
            string email = "joaoexample.com";


            // Act
            var cliente = new Cliente(id, nome, email, endereco);
            var emailValido = cliente.EmailValido();

            // Assert
            Assert.False(emailValido); // Verifica se o email é considerado inválido






        }

        [Fact]
        public void EvailValido_SemPonto_DeveRetornarFalso()
        {
            // Arrange
            var endereco = new Endereco("Rua A", 123, "Cidade B", "Estado C");
            int id = 1;
            string nome = "João";
            string email = "joao@examplecom";

            // Act
            var cliente = new Cliente(id, nome, email, endereco);
            var emailValido = cliente.EmailValido();

            // Assert
            Assert.False(emailValido); // Verifica se o email é considerado inválido
        }

    }


    }