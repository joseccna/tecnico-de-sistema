use pousadadb;

select * from cliente;
select * from telefone;
select * from telefone, cliente;

select * from cliente 
inner join telefone
on cliente.codCliente = telefone.codCliente;

select * from telefone
inner join cliente
on telefone.codcliente = cliente.codcliente;

select cliente.nomecliente, telefone.telefone from cliente
inner join telefone
 on cliente.codCliente = telefone.codCliente;
 
 select cliente.*, telefone.telefone from cliente
 inner join telefone
 on cliente.codCliente = telefone.codCliente;
 
 #Relatório Básico de Hospedagens:
 # O dono da hospedagem pediu um relatório básico de hospedagens:
 #-"Quero ver uma lista de todas as hospedagens, mostrando o nome do cliente,
 # o estado da hospedagem, data do inicio e data fim."
 #- É pra já meu patrão. Basta escrever:
 # Hospdedagem com cliente
 
 select * from hospedagem;
 
 select cliente.nomeCliente, hospedagem.estado, hospedagem.datainicio,
 hospedagem.datafim from hospedagem
 inner join cliente
 on cliente.codcliente = hospedagem.codcliente 
 order by  hospedagem.datainicio desc; # orderar por data de inicio decrescente.
 
 
 # Agora, preciso de um relatório das hospedagens, mostrando estado, data inicio, 
 # data fim e a localização delas (Chales).
 # hospedagem e chale
 
 select hospedagem.estado, hospedagem.datainicio, 
 hospedagem.datafim, chale.localizacao from hospedagem
 inner join chale
 on chale.codchale = hospedagem.codchale
 order by hospedagem.datainicio; # orderar por data de inicio.
 
 # Hospedgem, cliente e chale
 
 select hospedagem.estado, hospedagem.datainicio,
 hospedagem.datafim, cliente.nomecliente, chale.localizacao from hospedagem
 inner join cliente 
	on hospedagem.codcliente = cliente.codcliente
 inner join chale 
	on chale.codchale = hospedagem.codchale;
 
 