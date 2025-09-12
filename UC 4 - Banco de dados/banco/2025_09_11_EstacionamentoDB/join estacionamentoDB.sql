use estacionamentodb;

SELECT * FROM cliente;

select cliente.*, veiculo.modelo, veiculo.placa from cliente
inner join veiculo
on cliente.id = veiculo.cliente_id
order by cliente.nome asc;

