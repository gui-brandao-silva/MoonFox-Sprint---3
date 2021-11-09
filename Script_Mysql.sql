create database Moonfoxis;

use Moonfox;

create table tb_Empresa (
id_cliente int primary key auto_increment,
Nome_Empresa varchar(45),
CNPJ_CPF varchar(14),
EndereçoCliente varchar(45),
CEP varchar(45),
Data_abertura date
);

insert into tb_Empresa ( Nome_Empresa,CNPJ_CPF,EndereçoCliente,CEP,Data_abertura) values
('Benjamin3D',18367847000174,'Rua Plácido Cardoso','18213530','2010-08-12'),
('ImpressorasGeek',45009735000114,'Rua Lages','06807010','2018-11-05'),
('Jumpstart Impressora',36806277000153,'Rua General Castrioto','24110160','2010-03-28'),
('Dash Impressora',12970487000114,'Rua Ana Santos','14165528','2019-11-05'),
('Draco3D',8238386000176,'Travessa Waldemar Bonizzi','05026050','2019-10-01'),
('AXF3D',49733035000129,'Rua Canaã','08142770','2017-08-21'),
('ImpressorasAL',05437448000190,'Rua Monteiro Lobato','02997130','2015-03-11'),
('Cryonics Impressora',09651498897,'Rua Comendador Miguel Calfat','04537082','2014-06-11');

select*from Empresa;

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

select * from Usuario;

insert into Usuario(Nome,ADM,Email,Senha,fk_cliente) values
('Leonardo Nunes','Benjamin3000','altertech@3dbenja.com.br','*Bj335',1),
('Camila Alves','Geek3306','contatogeek@geeks3d.com.br','GKLc33*',2),
('Carlos Guimarães','Jump3300','contatos@jumps.com.br','JPm330#',3),
('João Siqueira','Dash3306','contantos@dashes.com.br','DsS*822',4),
('Ruan Teixeira','Draco3333','Draco3D@technologies.com.br','DRc#100',5),
('Cecilia Vasconselos','AXF3306','AXF3D@Enterprise.com.br','AXf*133',6),
('Fernando Souza','IAL3333','contatoAL@AL3D.com.br','Al#121',7),
('Rafaela Mello','Cry3306','contatato@cryonics.com.br','CRy*210',8);


 select*from Usuario;

create table tbs_Filiais (
id_filiais int auto_increment,
fk_empresa int,
NomeFilial varchar(45),
Quantidade_de_Salas int,
CEP_filial varchar(45),
PRIMARY KEY (`id_filiais`, `fk_empresa`),
foreign key (fk_empresa) references tb_Empresa (id_cliente)
)auto_increment = 20;

insert into Filiais (NomeFilial,Quantidade_de_Salas,CEP_filial,fk_empresa) values
('Benjamin3D-SP',12,'18650972',1),
('Benjamin3D-RJ',10,'21535490',1),
('ImpressorasGeek-SC',12,'88090528',2),
('ImpressorasGeek-SP',12,'08110610',2),
('Jumpstart Impressora-SP',11,'02469050',3),
('Jumpstart Impressora-MG',8,'30330072',3),
('Jumpstart Impressora-RJ',11,'20760400',3),
('Dash Impressora-RJ',12,'23520530',4),
('Draco3D-RJ',12,'22765310',5),
('Draco3D-MG',12,'30421413',5),
('AXF3D-SC',12,'88053471',6),
('ImpressorasAL-RJ',12,'21010372',7),
('Cryonics Impressora-SC',12,'88062268',8);

select*from Filiais;

create table tbs_impressora (
id_impressora int primary key auto_increment,
ModeloImpressora varchar(45),
Filamento varchar (3),
check( Filamento = 'ABS' or Filamento = 'PLA'),
Altura_Z decimal (10,2),
Largura_X decimal (10,2),
profundidade_Y decimal (10,2),
fk_filial int,
foreign key (fk_filial) references Filiais (id_filiais)
)auto_increment = 30;

insert into impressora (ModeloImpressora,Filamento,Altura_Z,Largura_X,profundidade_Y,fk_filial) values
( 'GAMA PRO','PLA',4.00,2.05,2.45,20),
( 'GAMA PRO Flaming Series I','ABS',4.50,2.25,2.45,20),
( 'GAMA PRO Frozen Series I','PLA',4.50,2.25,2.45,20),
( 'GAMA PRO ZT II','ABS',4.50,2.50,2.45,21),
( 'GAMA PRO Mark II','ABS',4.80,2.75,2.55,21),
( 'GAMA PRO ZT III','ABS',4.80,2.75,2.55,21),
( 'GAMA PRO ZX','PLA',4.70,2.60,2.45,22),
( 'GAMA PRO ZX Plus','PLA',4.80,2.60,2.45,22),
( 'GAMA PRO Mark Series','PLA',4.00,2.50,2.45,22),
( 'GAMA PRO Mark III','ABS',5.50,3.50,3.15,23),
( 'GAMA PRO G-Frost','PLA',5.70,3.55,3.25,23),
( 'GAMA PRO Mark II V-Create','PLA',6.50,3.70,3.55,23),
( 'GAMA DUAL T','PLA',9.50,5.50,5.15,24),
( 'GAMA DUAL V-Fusion','ABS',9.75,6.50,5.45,24),
( 'GAMA DUAL X-Core','PLA',9.60,5.80,5.35,24),
( 'GAMA PRO MARK IV X-FORCE','ABS',8.50,6.50,6.15,25),
( 'GAMA PRO MARK V X-FORCE','PLA',9.00,6.75,6.35,25),
( 'GAMA PRO MARK III X-FORCE','PLA',7.80,6.25,6.00,25),
( 'GAMA PRO Mark III VERMILION Series','PLA',7.90,4.90,4.55,26),
( 'GAMA PRO Mark III AZURE Series','ABS',7.90,4.90,4.55,26),
( 'GAMA PRO Mark III V-CREATE','PLA',7.70,4.80,4.35,26),
( 'VX XL GENESIS I','ABS',4.40,4.20,4.35,27),
( 'VX XL GENESIS II','ABS',4.80,4.40,4.55,27),
( 'VX XL GENESIS Valkirion','ABS',9.50,5.20,5.35,27),
( 'GAMA PRO MARK V Z-PLATINUM','PLA',9.80,5.70,5.35,28),
( 'GAMA PRO MARK VI Z-PLATINUM','PLA',10.00,6.00,6.15,28),
( 'GAMA PRO MARK VII Z-PLATINUM','ABS',10.20,6.70,6.35,28),
( 'VX XL GENESIS VI GOLDEN PLUS','PLA',9.80,5.65,5.25,29),
( 'VX XL GENESIS VII PLATINUM PLUS','PLA',10.50,7.65,7.25,29),
( 'VX XL GENESIS VIII DIAMOND PLUS','ABS',10.80,7.80,7.25,29),
( 'VX XL GENESIS III RUBY CRYSTAL','ABS',6.80,2.40,2.05,30),
( 'VX XL GENESIS IV SAPHIRE CRYSTAL','PLA',7.80,3.40,2.55,30),
( 'VX XL GENESIS V EMERALD CRYSTAL','PLA',8.80,3.80,2.75,30),
( 'VX XL GENESIS IV WHITE PLATE','ABS',7.20,2.80,2.15,31),
( 'VX XL GENESIS V WHITE PLATE','PLA',8.40,3.80,2.80,31),
( 'VX XL GENESIS VI WHITE PLATE','PLA',8.80,4.20,3.20,31),
( 'VX XL GENESIS V  BLACK PLATE','ABS',8.40,3.80,2.80,32),
( 'VX XL GENESIS VI BLACK PLATE','ABS',8.80,4.20,3.00,32),
( 'VX XL GENESIS VII  BLACK PLATE','ABS',9.00,4.40,3.20,32);

select*from impressora;

create table tbs_Sensor(
id_Sensor int primary key auto_increment,
fk_impressora int,
foreign key (fk_impressora) references impressora (id_impressora)
)auto_increment = 40;

insert into Sensor (fk_impressora) values
(30),(31),(32),(33),(34),(35),(36),(37),(38),(39),(40),(41),(42),
(43),(43),(44),(45),(46),(47),(48),(49),(50),(51),(52),(53),(54),
(55),(56),(57),(59),(60),(61),(62),(63),(64),(65),(66),(67),(68);

select*from Sensor;

create table tbs_Registros(
id_registro int primary key auto_increment,
Temperatura_Atual decimal (10,2)
)auto_increment = 50;
insert into Registros (Temperatura_Atual) values

(24.0),(22.0),(23.4),
(26.1),(22.1),(24.0),
(25.7),(23.3),(23.7),
(24.3),(20.5),(23.5),
(18.9),(22.8),(24.0),
(17.1),(18.3),(22.1),
(20.7),(22.3),(23.8),
(22.4),(24.1),(24.3),
(23.9),(25.7),(28.1),
(21.3),(24.1),(24.0),
(23.3),(24.3),(24.6),
(18.0),(19.1),(20.7),
(23.9),(24.3),(21.0);

select*from Registros;

create table tbs_Registros_Sensor(
fk_sensor int,
fk_registro int,
primary key(`fk_sensor`,`fk_registro`),
foreign key (fk_sensor) references Sensor (id_Sensor),
foreign key (fk_registro) references Registros (id_registro),
Data_Hora datetime
);

insert into Registros_Sensor (fk_sensor,fk_registro,Data_Hora) values
(40,50,'2021-07-21 14:33:17'),
(41,51,'2021-07-21 15:43:01'),
(42,52,'2021-09-14 11:21:31'),
(43,53,'2021-10-20 10:33:21'),
(44,54,'2021-05-15 10:14:33'),
(45,55,'2021-06-17 10:24:11'),
(46,56,'2021-08-21 11:43:09'),
(47,57,'2021-05-15 11:00:09'),
(48,58,'2021-06-07 10:44:19'),
(49,59,'2021-09-02 08:43:09'),
(50,60,'2021-10-05 09:00:09'),
(51,61,'2021-10-21 07:12:09'),
(52,62,'2021-11-11 17:43:39'),
(53,63,'2021-07-21 12:54:08'),
(54,64,'2021-04-21 13:33:29'),
(55,65,'2021-03-01 12:13:09'),
(56,66,'2021-02-28 10:23:41'),
(57,67,'2021-04-16 18:41:00'),
(58,68,'2021-06-24 11:00:09'),
(59,69,'2021-07-06 11:43:09'),
(60,70,'2021-02-27 12:09:01'),
(61,71,'2021-01-12 12:12:07'),
(62,72,'2021-03-05 14:04:01'),
(63,73,'2021-04-11 17:14:03'),
(64,74,'2021-08-05 21:07:03'),
(65,75,'2021-02-05 22:14:03'),
(66,76,'2021-06-05 21:55:07'),
(67,77,'2021-07-05 19:44:13'),
(68,78,'2021-08-05 20:24:03'),
(69,79,'2021-11-05 21:14:33'),
(70,80,'2021-10-20 23:48:13'),
(71,81,'2021-11-05 21:00:01'),
(72,82,'2021-09-05 21:54:23'),
(73,83,'2021-02-24 22:24:23'),
(74,84,'2021-07-17 00:40:08'),
(75,85,'2021-09-25 04:04:13'),
(76,86,'2021-02-27 08:33:22'),
(77,87,'2021-08-31 08:48:44'),
(78,88,'2021-10-30 07:22:11');

select*from Registros_Sensor;














 
 




