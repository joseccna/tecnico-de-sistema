-- Inserindo Clientes
INSERT INTO Clientes (nome, cpf, telefone) VALUES
('Jo�o Silva', '123.456.789-00', '11999999999'),
('Maria Oliveira', '987.654.321-00', '11888888888'),
('Carlos Souza', '111.222.333-44', NULL), -- Cliente sem ve�culo
('Ana Lima', '555.666.777-88', '11777777777'); -- Cliente sem ve�culo
 
-- Inserindo Vagas
INSERT INTO Vagas (localizacao, tipo) VALUES
('A1', 'Compacto'),
('A2', 'SUV'),
('B1', 'Moto'),
('B2', 'Compacto'),
('C1', 'SUV'); -- Vaga sem nenhum estacionamento
 
-- Inserindo Ve�culos
INSERT INTO Veiculos (cliente_id, placa, modelo, cor) VALUES
(1, 'ABC1234', 'Fiat Uno', 'Prata'),     -- Ve�culo com registro
(1, 'XYZ5678', 'Honda Civic', 'Preto'), -- Ve�culo sem registro
(2, 'DEF4321', 'Toyota Corolla', 'Branco'); -- Ve�culo com registro
 
-- Inserindo Registros de Estacionamento
INSERT INTO RegistrosEstacionamento (veiculo_id, vaga_id, data_hora_entrada, data_hora_saida, valor_final) VALUES
(1, 1, '2025-09-22 08:00:00', '2025-09-22 10:00:00', 20.00),
(3, 2, '2025-09-22 09:30:00', NULL, NULL); -- Ainda estacionado
 
-- Situa��es atendidas:
-- - Jo�o Silva tem dois ve�culos, um com e outro sem registro.
-- - Maria Oliveira tem um ve�culo com registro.
-- - Carlos e Ana s�o clientes sem ve�culos.
-- - Vaga C1 est� sem nenhum registro.
-- - Ve�culo XYZ5678 est� sem registro.
-- - Vaga B1 e B2 est�o sem uso.


......................................


-- Inserindo novos Clientes

INSERT INTO Clientes (nome, cpf, telefone) VALUES

('Fernando Rocha', '222.333.444-55', '11666666666'),

('Luciana Martins', '333.444.555-66', '11555555555'),

('Bruno Ferreira', '444.555.666-77', NULL); -- Cliente sem telefone
 
-- Inserindo Ve�culos (sem registros de estacionamento)

INSERT INTO Veiculos (cliente_id, placa, modelo, cor) VALUES

-- Ve�culos de Fernando Rocha

(5, 'GHI1234', 'Chevrolet Onix', 'Cinza'),

(5, 'JKL5678', 'Renault Kwid', 'Vermelho'),
 
-- Ve�culo de Luciana Martins

(6, 'MNO9012', 'Volkswagen Polo', 'Azul'),
 
-- Ve�culos de Bruno Ferreira

(7, 'PQR3456', 'Hyundai HB20', 'Preto'),

(7, 'STU7890', 'Ford Ka', 'Branco');
 