use estacionamentodb;

SELECT * FROM cliente;

select cliente.*, veiculo.modelo, veiculo.placa from cliente
inner join veiculo
on cliente.id = veiculo.cliente_id
order by cliente.nome asc;

select * from veiculo;

select * from vaga;

select * from registroestacionamento where datahorasaida is null;

select veiculo.modelo, veiculo.placa, r.datahoraentrada,
r.datahorasaida, r.valorfinal 
from registroestacionamento as r # as apelidar um nome da coluna.
inner join veiculo on veiculo.id = r.veiculo_id
where datahorasaida is null;


select cliente.nome, veiculo.modelo, veiculo.placa, r.datahoraentrada, vaga.localizacao
, r.datahorasaida, r.valorfinal 
from registroestacionamento as r # as apelidar um nome da coluna.
inner join veiculo on veiculo.id = r.veiculo_id
inner join vaga on r.vaga_id = vaga.id
inner join cliente on cliente.id = veiculo.cliente_id
where datahorasaida is null;

select vaga.localizacao, vaga.tipovaga, veiculo.placa
from vaga
left join registroestacionamento on registroestacionamento.vaga_id = vaga.id and registroestacionamento.datahorasaida is null
left join veiculo on registroestacionamento.veiculo_id = veiculo.id;










