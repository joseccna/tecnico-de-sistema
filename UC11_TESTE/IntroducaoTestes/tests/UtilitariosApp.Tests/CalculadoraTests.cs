using UtilitariosApp;

namespace UtilitariosApp.Tests
{
    
    public class CalculadoraTests
    {
        [Fact]
        public void Somar_DeveRotornarASomaCorreta()
        {
            var calculadora = new Calculadora();
            var resultado = calculadora.Somar(5, 7);
            var resultadoZerado = calculadora.Somar(0, 0);

            Assert.Equal(12, resultado);
            Assert.Equal(0, resultadoZerado);
        }

        [Fact]
        public void Multiplicar_DeveRetornarOProdutoCorreto()
        {
            var calculadora = new Calculadora();
            var resultado = calculadora.Multiplicar(3, 3);

            Assert.Equal(9, resultado);
        }

        [Fact]
        public void Dividir_DeveRetornarOResultadoInteiroDaDivisaoArredondadoParaCima()
        {
            var calculadora = new Calculadora();
            var resultado = calculadora.Dividir(5, 3);

            Assert.Equal(2, resultado);
        }

        [Fact]
        public void Dividir_AoDividirPorZero_DeveRetornarODividendo()
        {
            var calculadora = new Calculadora();
            var resultado = calculadora.Dividir(5, 0);

            Assert.Equal(5, resultado);
        }
        [Theory]
        [InlineData(10, 3, 1000)]
        [InlineData(5, 3, 125)]
        [InlineData(5, 2, 25)]
        [InlineData(2, -2, 0.25)]
        [InlineData(-32, 0, 1)]
        [InlineData(15, 1, 15)]
        [InlineData(-15, 1, -15)]
        public void PotenciaDeUmNumero_DeveRetrornarAPotencia(int a, int b, double pot)
        {
            Calculadora c1 = new Calculadora();
            var resultado = c1.PotenciaDeUmNumero(a, b);

            Assert.Equal(pot, resultado);

        }

        [Fact]
        public void RaizDeveRetornarARaizQuadrada()
        {
            Calculadora c1 = new Calculadora();
            var resultado = c1.Raiz(25);
            Assert.Equal(5, resultado);
        }

        [Theory]
        [InlineData(-1)]
        [InlineData(-25)]
        [InlineData(-100)]
        [InlineData(-1000)]
        public void Raiz_DeveLancarExcecaoParaNumerosNegativos(int a)
        {
            Calculadora c1 = new Calculadora();
            Assert.Throws<ArgumentException>(() => c1.Raiz(a));
        }

        [Theory]
        [InlineData(9, 3)]
        [InlineData(16, 4)]
        [InlineData(25, 5)]
        [InlineData(36, 6)]
        [InlineData(49, 7)]
        [InlineData(64, 8)]
        [InlineData(81, 9)]
        [InlineData(100, 10)]
        public void Raiz_DeveRetornarARaizQuadrada(int a, int b)
        {
            // Arrange
            Calculadora c1 = new Calculadora();
            // Act
            var resultado = c1.Raiz(a);
            // Assert
            Assert.Equal(b, resultado);
        }


        [Fact]
        public void Raiz_DeUmNumeroNegativo_DeveLancarArgumentException()
        {
            // Arrange
            Calculadora c1 = new Calculadora();
            int numero = -4;


            // Act e Assert são executados juntos, pois esperamos que a exceção seja lançada
            Assert.Throws<ArgumentException>(() => c1.Raiz(numero));

           // Assert.Equal(0, raziCalculada);
        }
    }

}
