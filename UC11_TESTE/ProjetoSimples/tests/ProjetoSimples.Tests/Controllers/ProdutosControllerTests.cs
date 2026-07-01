using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Moq;
using ProjetoSimples.API.Controllers;
using ProjetoSimples.API.Models;
using ProjetoSimples.API.Services;


namespace ProjetoSimples.Tests.Controllers
{
    public class ProdutosControllerTests
    {
        [Fact]
        public void GetById_DeveRetornarOk_QuandoProdutoExistir()
        {
            // Arrange
            // 1 Criamos um mock (imitador, dublê) da ProdutoService
            var mockService = new Mock<IProdutoService>();

            // 2 Ensinamos ao mock, como  responder chamadas por ID.
            mockService.Setup(s =>s.ObterPorId(40)).Returns(new Produto { Id = 40, Nome = "Produto Teste", Preco = 10.0m });

            //3 Instanciamos a controller, dependendo do mock, e não da service
            var controller = new ProdutosController(mockService.Object);

            // Act
            var result = controller.GetById(40);


            // Assert

            var okResult = Assert.IsType<OkObjectResult>(result);
            var produtoRetornado = Assert.IsType<Produto>(okResult.Value);
            Assert.Equal("Produto Teste", produtoRetornado.Nome);
            Assert.NotNull(okResult);
        }

    }




}
