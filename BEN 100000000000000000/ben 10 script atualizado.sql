CREATE
 database ben10;
use ben10;

-- tabela 1
create table inimigo(
idInimigo int primary key auto_increment,
nome varchar (45),
raça varchar(45),
nível varchar(45)
);
insert into inimigo values();
select * from inimigo;

-- tabela 2
create table poder(
idPoder int primary key auto_increment,
tipo varchar (45),
destruiçao int
);
insert into poder (tipo, destruiçao) values ("Controle de Fogo", 70), ("Controle de Água", 48), ("gelo", 59), ("teletransporte", 78), ("Telecinese", 94),
("SuperForça", 61), ("Imortalidade", 75), ("Invisibilidade", 60), ("Camuflagem", 40), ("Garras", 40), ("SuperVelocidade", 85), ("Amorfismo", 50), ("Incorporalidade",50),
("Controle da Terra", 40), ("Manipulação de Ar", 60), ("Amorfismo", 50), ("Elasticidade", 54), ("Regeneração", 73), ("Manipulação de Eletricidade", 76), 
("Manipulação de Plantas", 58), ("Controle Mental", 89), ("Telepatia", 58), ("Ilusionismo", 60);
select * from poder ;

-- tabela 3
create table cidade(
idCidade int primary key auto_increment,
nome varchar (45),
populaçao int
);
insert into cidade (nome,populaçao) values  ("Tóquio", 37468000), ("São Paulo", 2165000), ("Nova York",18819000), ("Hong Kong", 14967000), 
("Paris", 2175601), ("Londres", 8982000 ), ("Bangkok",8183000), ("Dubai",3331000), ("Roma",2873000), ("Veneza", 261905);
select * from cidade ;

-- tabela 4
create table relogio(
idRelogio int primary key auto_increment,
nome varchar(45),
criador varchar(45),
cor varchar(45),
criaçao date
);
insert into relogio (nome,criador,cor,criaçao) values
("Relógio do poder","Alien X","laranja",'2020-05-05'),
("Omnitrix","Azmuth","verde",'2020-10-09'),
("Omnitrix-negativo","Myaxx","vermelho",'1999-08-26');
select * from relogio ;

-- tabela 5
create table alien(
idAlien int primary key auto_increment,
nome varchar(45),
raca varchar(45),
porte varchar(45),
perigo int
);
insert into alien (nome,raca,porte,perigo)values
("besta","vulpimancwer","x","x"),
("Quatro braços","tetramando","x","x"),
("Massa cinzenta","galvaniano","x","x"),
("XLR8","kinicelerano","x","x"),
("Utrt","mecamorfo","x","x"),
("Diamante","petrosadien","x","x"),
("Aquatico","pisccis volann","x","x"),
("Insectoide","lepidopterrano","x","x"),
("Fantasmático","ectonurita","x","x"),
("Chama","pyronita","x","x"),
("Bola de Canhão","pelarota","x","x"),
("Glutão","floranna","x","x"),
("Clone","thep","x","x"),
("Ben-Victor","transyliano","x","x"),
("Benmúmia","mummyon","x","x"),
("Lobisben","loboan","x","x"),
("Cipó selvagem","spixiom","x","x"),
("Gigante","tolkustar","x","x"),
("Cuspidor","chroniano","x","x"),
("Iguana Artíca","nojodeeniano","x","x"),
("Chocante","polar manzardill","x","x");
;
select * from alien ;

-- tabela 6
create table encanador(
idEncanador int primary key auto_increment,
fk_capitao int,
fk_cidade int,
foreign key (fk_capitao) references encanador(idEncanador),
foreign key (fk_cidade) references cidade(idCidade),
nome varchar(45),
idade int,
raça varchar(45),
serviço DATE
);

drop table encanador;

insert into encanador values();
select * from encanador ;

-- tabela 7
create table equipamento(
idEquipamento int,
fk_alien int,
fk_encanador int,
nivel varchar (45),
destruiçao varchar(45),
foreign key (fk_alien) references alien(idAlien),
foreign key (fk_encanador) references encanador(idEncanador),
primary key (`idEquipamento`,`fk_alien`,`fk_encanador`) 
);
insert into equipamento values();
select * from equipamento ;

drop table equipamento;

-- tabela 8
create table habilidade(
idHabilidade int,
fk_alien int,
fk_poder int,
foreign key (fk_alien) references alien(idAlien),
foreign key (fk_poder) references poder(idPoder),
primary key (`idHabilidade`,`fk_alien`,`fk_poder`)
);

insert into habilidade values();
select * from habilidade ;

-- tabela 9
create table portador(
idPortador int primary key auto_increment,
nome varchar(45));
insert into portador values();
select * from portador ;

-- tabela 10
create table usuario(
idUsuario int,
fk_portador int,
fk_relogio int,
foreign key (fk_portador) references portador(idPortador),
foreign key (fk_relogio) references relogio(idRelogio),
primary key(`idUsuario`,`fk_portador`,`fk_relogio`),
inicioUso date,
finalUso date,
estatus varchar(45)
);
insert into usuario values();
select * from usuario ;

-- tabela 11
create table adversario(
idAdversario int,
fk_portador int,
fk_inimigo int,
foreign key (fk_portador) references portador(idPortador),
foreign key (fk_inimigo) references inimigo(idInimigo),
primary key(`idAdversario`,`fk_portador`, `fk_inimigo`)
);
insert into adversario values();
select * from adversario ; 





Create table genetica (
IdGenetica int, 
fk_alien int,
fk_relogio int,
Foreign key (fk_alien) references alien(idAlien),
Foreign key (fk_relogio) references relogio(idRelogio),
primary key (`IdGenetica`,`fk_alien`,`fk_relogio`)
);