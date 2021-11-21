create database bd_moonfox;
use bd_moonfox;

/* TABELA EMPRESA */
create table tb_Empresa (
id_cliente int primary key auto_increment,
Nome_Empresa varchar(45),
CNPJ_CPF varchar(14),
EndereçoCliente varchar(45),
CEP varchar(45),
Data_abertura date
);
select*from empresa;

/* TABELA ACESSO */
create table tb_acesso (
id_acesso int,
fk_usuarios int,
primary key (`id_acesso`, `fk_usuarios`),
foreign key (fk_usuarios) references tbs_filiais (id_filiais),	
fk_filiais int,
foreign key (fk_filiais) references tb_Usuario (id_usuario)	
)auto_increment = 60;
select * from tb_acesso;

/* TABELA USUARIO */
create table tb_Usuario(
id_usuario int auto_increment ,
fk_cliente int ,
Nome varchar(45),
ADM varchar(45),
Email varchar(45),
Senha varchar(45),
 PRIMARY KEY (`id_usuario`, `fk_cliente`),
foreign key (fk_cliente) references tb_Empresa (id_cliente)
)auto_increment = 10;
select * from usuario;

/* TABELA FILIAIS */
create table tbs_filiais (
id_filiais int auto_increment,
fk_empresa int,
NomeFilial varchar(45),
Quantidade_de_Salas int,
CEP_filial varchar(45),
PRIMARY KEY (`id_filiais`, `fk_empresa`),
foreign key (fk_empresa) references tb_Empresa (id_cliente)
)auto_increment = 20;
select * from tb_filiais;

/* TABELA IMPRESSORA */
create table tb_impressora (
id_impressora int primary key auto_increment,
ModeloImpressora varchar(45),
Filamento varchar (3),
check( Filamento = 'ABS' or Filamento = 'PLA'),
Altura_Z decimal (10,2),
Largura_X decimal (10,2),
profundidade_Y decimal (10,2),
fk_filiais int,
foreign key (fk_filiais) references tbs_filiais (id_filiais)
)auto_increment = 30;
select * from tbs_impressora;

/* TABELA SENSOR */
create table tb_sensor(
id_sensor int primary key auto_increment,
fk_impressora int,
foreign key (fk_impressora) references tb_impressora (id_impressora)
)auto_increment = 40;
select * from sensor;

create table tb_registros(
id_registro int auto_increment,
fk_sensor int,
primary key (`id_registro`,`fk_sensor`),
Temperatura_Atual decimal (10,2)
)auto_increment = 50;
select * from tb_registros;

