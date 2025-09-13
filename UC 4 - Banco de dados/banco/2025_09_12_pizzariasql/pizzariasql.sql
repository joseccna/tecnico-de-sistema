create database if not exists pizzariasql;
use pizzariasql;



create table if not exists cliente (
id int not null auto_increment, nome varchar(100) not null, 
telefone varchar(20) not null unique, endereco varchar(100) not null,
primary key(id)
);



create table if not exists pizza (
id int not null auto_increment, nome varchar(100) not null unique,
descricao varchar(150) not null, preco decimal (10, 2),
primary key (id)
);

create table if not exists pedido(
idpedido int not null auto_increment, datapedido datetime not null,
cliente_id int not null, 
statuspizza enum('Em preparo', 'A caminho', 'Entregue') not null,
CONSTRAINT fk_cliente FOREIGN KEY (cliente_id) REFERENCES cliente (id),
primary key(idpedido)
);

create table if not exists itenspedido(
id int not null auto_increment, idpedido int not null, 
pizza_id int not null, quantidade int not null, 
CONSTRAINT fk_pedido FOREIGN KEY (idpedido) REFERENCES pedido (idpedido),
constraint fk_pizza foreign key(pizza_id) references pizza (id)
);