using System;
using UtilitariosApp;


var endereco = new Endereco("Rua A", 123, "Cidade B", "Estado C");
var cliente = new Cliente(1, "João", "joao@example.com", endereco);

Console.WriteLine(cliente.ObterInformacoes());

