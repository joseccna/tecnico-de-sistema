namespace ProjetoSimples.API.Models
{
    public class Produto
    {
        public int Id { get; set; }
        public string Nome { get; set; } = string.Empty; // Inicializando a propriedade Nome com uma string vazia para evitar valores nulos.
        public decimal Preco { get; set; }
    }

}
