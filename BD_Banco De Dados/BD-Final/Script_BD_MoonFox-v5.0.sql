create database bd_moonfox;
use bd_moonfox;

-- TAELA'S --
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
);
select * from tb_sensor;

create table tb_registros(
id_registro int auto_increment,
fk_sensor int,
primary key (`id_registro`,`fk_sensor`),
temperatura decimal (10,2),
foreign key (fk_sensor) references tb_sensor (id_sensor),
momento datetime
)auto_increment = 50;
select * from tb_registros;

-- INSERT'S --
-- INSERT'S EMPRESA--
insert into tb_empresa(nome_empresa,email_usuario,senha) values 
('MoonFox','pao@gmail.com',1234),
('HiverDimencion3','HiverDimencion3@gmail.com',1234),
('Das3D','Das3D@gmail.com',12345),
('NewModel3D','NewModel3D@gmail.com',12346);

-- INSERT'S FILIAIS --
insert into  tb_filiais(fk_empresa,CEP_filial) values
(1,'18650972'),
(3,'21535490'),
(2,'88090528'),
(4,'88090528');

-- INSERT'S IMPRESSORAS --
insert into tb_impressora (modelo_impressora,filamento_principal,fk_filiais) values
('Ender I3','PLA',21),
('Gama Pro','ABS',20),
('Gama Pro MK2','PLA',23),
('Graber I3','PLA',22);

-- INSERT'S SENSOR --
insert into tb_sensor(fk_impressora) values 
(30),
(31),
(32),
(33); 

-- INSERT'S REGISTROS --
insert into tb_registros(fk_sensor,temperatura,momento) values 
(1,22.91,'2021-12-04 23:38:49'),
(2,5.50,'2021-12-04 23:38:49');
(2,5.50,'2021-12-04 23:38:49');

