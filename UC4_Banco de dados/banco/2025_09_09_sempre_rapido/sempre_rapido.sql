# Criação do banco de dado sempre_rapido
create database if not exists sempre_rapido;
use sempre_rapido;

# Entidade principal
create table if not exists Cliente(
nome varchar(100) not null,
CPF varchar(20) not null unique,
telefone varchar (20) null, # neste campo permite nulo
primary key(CPF)
);

# Entidade principal
create table if not exists Vagas(
id_vaga int not null auto_increment,
localizacao varchar(20) not null unique,
tipo varchar(20)not null,
primary key(id_vaga)

);

# Entidade segundaria
create table if not exists Veiculo(
placa varchar(10) not null,
modelo varchar(20) not null,
cpf varchar(20) not null,
cor varchar(20)not null,
primary key(placa),
constraint fk_cliente_cpf foreign key(cpf) references Cliente(CPF) on delete cascade 
on update cascade
);

# Entidade segundaria
create table if not exists Registro(
id_registro int not null auto_increment,
placa varchar(10) not null,
id_vaga int not null,
data_entrada datetime,
data_saida datetime,
valor decimal(4, 2) null,
constraint fk_veiculo_placa foreign key(placa) references Veiculo(placa),
constraint fk_vaga_id_vaga foreign key(id_vaga) references Vagas(id_vaga),
primary key(id_registro)
);


