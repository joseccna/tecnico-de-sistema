create database if not exists PizzariaDB;
use PizzariaDB;

create table if not exists Clientes (
id int not null auto_increment, nome varchar(100) not null, 
telefone varchar(20) not null unique, endereco varchar(255) null,
primary key(id)
);

create table if not exists Pizzas (
id int not null auto_increment, sabor varchar(50) not null unique, 
ingreditentes text null, valor decimal (10, 2)  null,
primary key(id)
);

create table if not exists Pedidos (
id int not null auto_increment, data_hora datetime not null,
cliente_id int null, 
status_pedido varchar(200) default 'Em preparo',
valor_total decimal (10,2)null, # deve ser guardado o valo como foto do que foi pago.
CONSTRAINT fk_pedidos_cliente FOREIGN KEY (cliente_id) REFERENCES clientes (id),
primary key(id)
);


create table if not exists Pedido_Itens(
pedido_id int not null, 
pizza_id int not null, quantidade int not null default 1, 
valor_unitario decimal (10,2) not null,
CONSTRAINT fk_itens_pedido FOREIGN KEY (pedido_id) REFERENCES pedidos (id),
constraint fk_itens_pizza foreign key(pizza_id) references pizzas (id),
primary key(pedido_id, pizza_id)
);


