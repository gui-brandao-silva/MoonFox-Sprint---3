create database ben10;
use ben10;

-- tabela 1
create table inimigo(
idInimigo int primary key auto_increment,
nome varchar (45),
raça varchar(45),
nível varchar(45)
);
insert into inimigo (nome,raça,nível) values
("Vilgax","Chimera Sui Generis","100"),
("Dr Animal","Humano","55"),
("Cavaleiros Eternos","Humanos","65"),
("Zomboso","Mutante","68"),
("Albedo","Galvaniano","95"),
("Desentupidores","Aliens","100"),
("Aggregor","Asmosiano","100"),
("Encantriz","Humano","70"),
("HEX","Humano","70"),
("Dr Viktor","transyliano","100"),
("Blue","Humano","67"),
("Estrela Sombria","humano","70"),
("Irmaos Vreedle","Vreedles","65"),
("Joseph Chadwick","humano","60"),
("Billy Billions","Humano","55"),
("Soberanos","Soberanus","80"),
("Rei Eterno","Humano","100"),
("Attea","Incursiano","70"),
("Looma Vento Vermelho","Tetramando","70"),
("Capitao N","Humano","40");

select * from inimigo;

-- tabela 2
create table poder(
idPoder int primary key auto_increment,
tipo varchar (45),
destruiçao int
);
insert into poder (tipo, destruiçao) values ("Controle de Fogo", 70), ("Controle de Água", 70),("teletransporte", 78), ("Telecinese", 94),
("SuperForça", 61), ("Imortalidade", 75), ("Invisibilidade", 60), ("Camuflagem", 40), ("Garras", 40), ("SuperVelocidade", 85), ("Amorfismo", 50), ("Incorporalidade",50),
("Controle da Terra", 40), ("Manipulação de Ar", 60), ("Metamorfagem", 50), ("Elasticidade", 54), ("Regeneração", 73), ("Manipulação de Eletricidade", 76), 
("Manipulação de Plantas", 58), ("Controle Mental", 89), ("Telepatia", 58), ("Ilusionismo", 60), ("Controle Temporal", 90),("Manipução de Cristais",80),
("Disparo De gosma",35),("Respirar debaixo da agua",70),("Alta resistencia",70),("Rajada Sonicas",75),("Controle de gravidade",90),("Construção de maquinas",40),
("Agiliade Extrema",80),("Manipulacao de gases",75),("laminas de lase",80),("Blindagem",90),("Hyper força", 100),("Controle de gelo",70),("Clonagem","80"),("Dominacao galatica",90),
("Disparos de Energia",60),("Super inteligencia",90),("Metamorfose",70),("indestrutibilidade",90),("Bolas adesivas explosivas",70),("Manipulação de energia interna",70),
("Manipulação de radiação",90),("Diminuir tamanho",65),("Magnetismo",80);
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
insert into relogio (nome,criador,cor,criacao) values
("Relógio do poder","Alien X","laranja","1-01-01"),
("Omnitrix","Azmuth","verde","1000-10-10"),
("Omnitrix-negativo","Myaxx","vermelho","1200-10-10"),
("Super-Omnitrix","Albedo","Vermelho-escuro","2009-07-03"),
("Nemetrix","Dr Psychobos","Vermelho-claro","2011-09-04");
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
("besta","vulpimancwer","B","D"),
("Quatro braços","tetramando","A","B"),
("Massa cinzenta","galvaniano","C","A"),
("XLR8","kinicelerano","A","B"),
("Utrt","mecamorfo","A","S"),
("Diamante","petrosadien","A","A"),
("Aquatico","pisccis volann","D","D"),
("Insectoide","lepidopterrano","D","C"),
("Fantasmatico","ectonurita","A","A"),
("Chama","pyronita","A","S"),
("Bola de Canhão","pelarota","A","B"),
("Glutao","floranna","D","C"),
("Clone","thep","A","B"),
("Ben-Victor","transyliano","B","B"),
("Benmúmia","mummyon","A","A"),
("Lobisben","loboan","A","B"),
("Cipo selvagem","spixiom","B","B"),
("Gigante","tolkustar","S","SS"),
("Cuspidor","chroniano","B","B"),
("Iguana Artica","nojodeeniano","A","A"),
("Chocante","polar manzardill","C","A"),
("Macaco-Aranha","Arachnachimp","B","A"),
("Enormossauro","Vaxasauriano","S","S"),
("Friagem","Necrofrigiano","A","S"),
("Fogo-Fatuo","metanosiano","A","A"),
("Gosma","Viscosia","A","A"),
("Artropode","Cerebrocrustaceano","B","S"),
("Cromático","Crsytalsadiano","A","A"),
("Eco-Eco","Sonorosiano","A","B"),
("Arraia-Ajato","Aerofibiano","A","B"),
("Alien-X","Sapien Celestial","SS","SS"),
("Estrela-Polar","Biosovortiano","A","A"),
("Rath","Appoplexiano","A","S"),
("Nanomech","Nanochip","C","S"),
("Ameaça-Aquatica","Orishano","A","A"),
("Tartagira","Geochelone-Aerio","A","B"),
("Amperi","Amperiano","A","A"),
("NRG","Prypiatosiano-B","S","S"),
("Armatu","Talpadeano","A","S"),
("Camaleao","Viscosia","C","B"),
("Contratempo","Chronosapien","S","S"),
("Acelerado","CitraKayah","A","B"),
("Feedback","Conductoide","S","S"),
("Atomico","Atomic Sapien","SS","SS"),
("Bloxx","Segmentosapien","B","B"),
("Fada-do-sono","Menuina","A","B"),
("Espantoide","Espantosapien","B","B"),
("O Pior","Atpociano","B","S"),
("Escarabola","Antrotoide","A","B"),
("Walkatruta","Trutoroide","A","B"),
("Astrodactilo","Pterodiano","A","B"),
("Bigotoide","Bigogisiano","A","B"),
("Crocoroide","Galileano","A","B"),
("Grillix","Orthoterrano","A","D"),
("Gravattack","Galileano","A","SS"),
("Podrao","Gasiceano","A","A"),
("Vompiro","Vladat","A","S"),
("Diabrete","Planchacule","A","B"),
("AlienZ","Fischiciano","A","A"),
("Shocksquath","Gimlinopithecus","A","A");

select * from alien ;

-- tabela 6
create table encanador(
idEncanador int primary key auto_increment,
fk_capitao int,
foreign key (fk_capitao) references encanador(idEncanador),
nome varchar(45),
idade int,
raça varchar(45),
serviço varchar(45)
);
insert into encanador (nome,idade,raça,serviço) values
("kraion","75","vulpimancwer","Cao-de-caça",6),
("Jasen","225","tetramando","Equipe-Tatica",6),
("Burg","504","galvaniano","Engenheiro",null),
("Kai","2","kinicelerano","Equipe-tatica",6),
("Lr8161","20","mecamorfo","Armeiro",null),
("Ttrax","54","petrosadien","Magestrado",7),
("Lure","60","pisccis volann","Alto-Magestrado",null),
("Garric","75","lepidopterrano","Equipe-Aerea",11),
("Mathens","1023","ectonurita","Equipe-Aerea",11),
("Bricer","574","pyronita","Magestrado",7),
("Eloien","84","pelarota","Equipe-Aerea",11),
("Droi","74","floranna","Equipe de reconhecimento"),
("Mark","14","thep","Equipe de reconhecimento"),
("Valbin","96","transyliano","Equipe de reconhecimento"),
("Crayn","1174","mummyon","Magestrado",7),
("Wolfkn","33","loboan","Comandante",15);


select * from encanador ;

-- tabela 7
create table equipamento(
idEquipamento int primary key auto_increment,
nivel varchar (45),
destruiçao varchar(45),
fk_alien int,
foreign key (fk_alien) references alien(idAlien),
fk_encanador int,
foreign key (fk_encanador) references encanador(idEncanador)
);
insert into equipamento values();

select * from equipamento ;

-- tabela 8
create table habilidade(
idHabilidade int primary key auto_increment,
fk_alien int,
foreign key (fk_alien) references alien(idAlien),
fk_poder int,
foreign key (fk_poder) references poder(idPoder));
insert into habilidade values();
select * from habilidade ;

-- tabela 9
create table portador(
idPortador int primary key auto_increment,
nome varchar(45));
insert into portador (nome) values
("Ben Tenyson"),
("Evil Ben"),
("Ben Negativo"),
("Benzarro"),
("Gwen 10"),
("Ben 10.000"),
("Ben 23");

select * from portador ;

-- tabela 10
create table usuario(
idUsuario int primary key auto_increment,
fk_portador int,
foreign key (fk_portador) references portador(idPortador),
fk_relogio int,
foreign key (fk_relogio) references relogio(idRelogio),
inicioUso date,
finalUso date,
Estatus varchar(45)
);
insert into usuario values();
select * from usuario ;

-- tabela 11
create table adversario(
idAdversario int primary key auto_increment,
fk_portador int,
foreign key (fk_portador) references portador(idPortador),
fk_inimigo int,
foreign key (fk_inimigo) references inimigo(idInimigo)
);
insert into adversario values();
select * from adversario ;