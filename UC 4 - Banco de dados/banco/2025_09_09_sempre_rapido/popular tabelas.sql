-- 1. Inserir Clientes
use sempre_rapido;

INSERT INTO Cliente (nome, CPF, Telefone) VALUES
('João da Silva', '121.222.333-04', '11-98877-4455'),
('Maria Oliveira', '212.333.444-15', '11-95555-6677'),
('Pedro Souza', '383.444.555-06', '11-99999-7788'),
('Miguel Souza', '323.454.565-07', '11-99999-8888');

INSERT INTO Veiculo (placa, modelo, cpf, cor) VALUES
('ABC1234', 'Fiat Uno', '121.222.333-04', 'Vermelho'),
('XYZ5678', 'Honda Civic', '212.333.444-15', 'Preto'),
('DEF9012', 'Toyota Corolla', '383.444.555-06', 'Branco'),
('GHI3456', 'Volkswagen Gol', '323.454.565-07', 'Azul');

INSERT INTO Vagas (localizacao, tipo) VALUES
('A1', 'Média'),
('A2', 'Pequena'),
('B1', 'Média'),
('B2', 'Grande'),
('C1', 'Média');

INSERT INTO Registro (placa, id_vaga, data_entrada, data_saida, valor) VALUES
('ABC1234', 1, '2025-09-10 08:00:00', '2025-09-10 12:00:00', 20.00),
('XYZ5678', 2, '2025-09-10 09:30:00', NULL, NULL),
('DEF9012', 3, '2025-09-10 10:15:00', '2025-09-10 14:30:00', 25.50),
('GHI3456', 4, '2025-09-10 11:00:00', NULL, NULL),
('ABC1234', 5, '2025-09-10 15:00:00', '2025-09-10 18:00:00', 15.75);

