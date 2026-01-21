SELECT
	Clientes.id,
	Clientes.nome,
	Clientes.cpf,
	Veiculos.placa,
	Veiculos.modelo
FROM 
	Clientes
INNER JOIN
	Veiculos ON Clientes.id = Veiculos.cliente_id;

SELECT * FROM Veiculos;

DELETE FROM Clientes WHERE id = 6;


SELECT
RegistrosEstacionamento.data_hora_entrada,
RegistrosEstacionamento.data_hora_entrada,
RegistrosEstacionamento.valor_final,
Veiculos.placa,
Veiculos.modelo,
Vagas.Localizacao
FROM
	RegistrosEstacionamento
INNER JOIN	
	Veiculos on RegistrosEstacionamento.veiculo_id = Veiculos.id
INNER JOIN
	Vagas on RegistrosEstacionamento.vaga_id = Vagas.id;

select * from Vagas;
delete from Vagas where Localizacao = A1; -- não pode deletar pois a vaga já foi utilizada.