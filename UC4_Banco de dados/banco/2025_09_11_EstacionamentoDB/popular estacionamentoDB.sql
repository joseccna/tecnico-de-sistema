USE EstacionamentoDB;

-- 1. Popular a tabela Cliente
INSERT INTO Cliente (nome, cpf, telefone) VALUES
('João da Silva', '121.222.333-04', '11-98877-4455'),
('Maria Oliveira', '212.333.444-15', '11-95555-6677'),
('Pedro Souza', '383.444.555-06', '11-99999-7788'),
('Ana Costa', '323.454.565-07', '11-99999-8888');

-- 2. Popular a tabela Veiculo
INSERT INTO Veiculo (cliente_id, placa, modelo, cor) VALUES
(1, 'ABC1234', 'Fiat Uno', 'Vermelho'),
(2, 'XYZ5678', 'Honda Civic', 'Preto'),
(3, 'DEF9012', 'Toyota Corolla', 'Branco'),
(4, 'GHI3456', 'Volkswagen Gol', 'Azul');

-- 3. Popular a tabela Vaga
INSERT INTO Vaga (localizacao, tipoVaga) VALUES
('A1', 'Média'),
('A2', 'Pequena'),
('B1', 'Média'),
('B2', 'Grande'),
('C1', 'Média');

-- 4. Popular a tabela RegistroEstacionamento
INSERT INTO RegistroEstacionamento (veiculo_id, vaga_id, dataHoraEntrada, dataHoraSaida, valorFinal) VALUES
(1, 1, '2025-09-11 08:00:00', '2025-09-11 12:00:00', 20.00),
(2, 2, '2025-09-11 09:30:00', NULL, NULL),
(3, 3, '2025-09-11 10:15:00', '2025-09-11 14:30:00', 25.50),
(4, 4, '2025-09-11 11:00:00', NULL, NULL),
(1, 5, '2025-09-11 15:00:00', '2025-09-11 18:00:00', 15.75);
