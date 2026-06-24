using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UtilitariosApp.Tests
{
    public class UltilitariosTextoTests
    {
        [Fact]
        public void ValidarTamanho_ContextoNoIntervalo_DeveRetornarVerdadeiro()
        {
            // Arrange
            var utilitario = new UltilitariosTexto();
            string texto = "dotnet";
            int min = 2;
            int max = 10;

            // Act
            bool resultado = utilitario.ValidarTamanho(texto, min, max);


            // Assert
            Assert.True(resultado);

        }

        [Fact] // Teste negativo para validar o tamanho do texto quando o contexto é menor que o mínimo
        public void ValidarTamanho_ContextoMenorQueMinimo_DeveRetornarFalso()
        {
            // Arrange
            var utilitario = new UltilitariosTexto();
            string texto = "dotnet";
            int min = 8;
            int max = 20;

            // Act
            bool resultado = utilitario.ValidarTamanho(texto, min, max);



            // Assert
            Assert.False(resultado);

        }


        [Theory] // valide todos os casos de borda (edge cases)
        [InlineData("dotnet", 2, 10, true)] // dentro do intervalo
        [InlineData("dotnet", 8, 10, false)] // menor que o mínimo
        [InlineData("dotnet", 1, 5, false)] // maior que o máximo
        [InlineData("dotnet", 6, 6, false)] // igual ao mínimo e máximo
        [InlineData("dotnet", 0, 0, false)] // vazio
        [InlineData("dotnet", null, null, false)] // mínimo zero
        [InlineData("Lata", 2, 3, false)] // dentro do intervalo
        [InlineData("z", 1, 10000, false)] // dentro do intervalo
        [InlineData("", 0, 10, false)] // dentro do intervalo
        [InlineData(null, 5, 10, false)] // dentro do intervalo
        public void ValidarTamanho_DeveRetornarTotalDePalavras(string texto, int min, int max, bool esperado)
        {
            // Arrange
            var utilitario = new UltilitariosTexto();

            // Act
            bool resultado = utilitario.ValidarTamanho(texto, min, max);

            // Assert
            Assert.Equal(esperado, resultado);

        }


        [Theory]
        [InlineData("dotnet é uma plataforma de desenvolvimento de software", 8)] // dentro do intervalo
        [InlineData("dotnet é uma plataforma de desenvolvimento", 6)] // dentro do intervalo
        [InlineData("dotnet é uma ferramenta", 4)] // dentro do intervalo
        [InlineData("", 0)] // dentro do intervalo
        [InlineData(" ", 2)] // dentro do intervalo
        [InlineData( null, 0)] // dentro do intervalo
        public void ContadorDePalavras_DeveRetornarTotalDePalavras(string texto, int esperado)
        {
            // Arrange
            var utilitario = new UltilitariosTexto();

            // Act
            int validacao = utilitario.ContadorDePalavras(texto);
            // Assert

            Assert.Equal(esperado, validacao);
        }





    }




}
