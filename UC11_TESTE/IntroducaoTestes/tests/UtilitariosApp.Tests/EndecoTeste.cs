using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UtilitariosApp;

namespace UtilitariosApp.Tests
{
    public class EndecoTeste
    {

        [Fact]
        public void Endereco_DeveTerPropriedadesCorretas()
        {
            // Arrange
            string rua = "Rua A";
            int numero = 123;
            string cidade = "Cidade B";
            string estado = "Estado C";
            
            // Act
            var endereco = new Endereco(rua, numero, cidade, estado);
            
            // Assert
            Assert.NotNull(endereco);
            Assert.Equal(rua, endereco.Rua);
            Assert.Equal(numero, endereco.Numero);
            Assert.Equal(cidade, endereco.Cidade);
            Assert.Equal(estado, endereco.Estado);
        }



    }
}
