insert into cliente(nome,telefone,endereco) values ('Jose Nascimento','11-8888-5555','Rua Maria Zeia,89'),
('Marelo Sauel','11-9999-5566','Rua Nove,43'),('Fatima Maria', '11-7777-4433', 'Rua Souza Cruz,67');

insert into pizza(nome,descricao,preco) values
('Margaherita','Molho de tomate, mussarela e manjericão',32.90),
('Calabresa','Molho de tomate, mussarela e calabresa fatiada', 36.50),
('Quatro Qeijos','Molho de tomate, mussarela, gorgonzola, parmesão e catupiry', 42.00),
('Frango com Catupiry','Molho de tomate, mussarela, frango desfiado e catupiry', 40.00),
('Portuguesa', 'Molho de tomate, mussarela, presunto, ovo, cebola e azeitona', 41.50),
('Pepperoni', 'Molho de tomate, mussarela e pepperoni', 44.90);

INSERT INTO pedido (datapedido, cliente_id, statuspizza) VALUES
('2025-09-16 19:45:00', 1, 'Em preparo'),
('2025-09-16 20:10:00', 2, 'A caminho'),
('2025-09-15 18:30:00', 3, 'Entregue'),
('2025-09-14 21:00:00', 1, 'Entregue'),
('2025-09-13 19:15:00', 2, 'A caminho'),
('2025-09-12 22:00:00', 3, 'Em preparo');

-- Pedido 1 (Cliente 1) pediu 2 pizzas Margherita
INSERT INTO itenspedido (idpedido, pizza_id, quantidade) VALUES
(1, 1, 2);

-- Pedido 2 (Cliente 2) pediu 1 Calabresa e 1 Quatro Queijos
INSERT INTO itenspedido (idpedido, pizza_id, quantidade) VALUES
(2, 2, 1),
(2, 3, 1);

-- Pedido 3 (Cliente 3) pediu 1 Frango com Catupiry
INSERT INTO itenspedido (idpedido, pizza_id, quantidade) VALUES
(3, 4, 1);