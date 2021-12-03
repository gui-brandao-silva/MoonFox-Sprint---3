create database bd_moonfox;
use bd_moonfox;

/* TABELA EMPRESA */
create table tb_empresa (
id_empresa int primary key auto_increment,
nome_empresa varchar(45),
email_usuario varchar(45),
senha varchar(45)
);
select*from tb_empresa;

/* TABELA FILIAIS */
create table tb_filiais (
id_filiais int auto_increment,
fk_empresa int,
CEP_filial varchar(45),
PRIMARY KEY (`id_filiais`, `fk_empresa`),
foreign key (fk_empresa) references tb_empresa (id_empresa)
)auto_increment = 20;
select * from tb_filiais;

/* TABELA IMPRESSORA */
create table tb_impressora (
id_impressora int primary key auto_increment,
modelo_impressora varchar(45),
filamento_principal varchar (3),
check( filamento_principal = 'ABS' or filamento_principal = 'PLA'),
fk_filiais int,
foreign key (fk_filiais) references tb_filiais (id_filiais)
)auto_increment = 30;
select * from tb_impressora;

/* TABELA SENSOR */
create table tb_sensor(
id_sensor int primary key auto_increment,
fk_impressora int,
foreign key (fk_impressora) references tb_impressora (id_impressora)
)auto_increment = 40;
select * from tb_sensor;

create table tb_registros(
id_registro int auto_increment,
fk_sensor int,
primary key (`id_registro`,`fk_sensor`),
temperatura_atual decimal (10,2),
foreign key (fk_sensor) references tb_sensor (id_sensor)
)auto_increment = 50;
select * from tb_registros;

