-- Dropando tudo
SELECT
    'drop table if exists "' || tablename || '" cascade;' as pg_drop
FROM
    pg_tables
WHERE
    schemaname='public';
	
drop table if exists "pais" cascade;
drop table if exists "copa" cascade;
drop table if exists "pessoa" cascade;
drop table if exists "equipe_pais_ano" cascade;
drop table if exists "equipe" cascade;
drop table if exists "jogo" cascade;
drop table if exists "copa_contem_jogo" cascade;

-- CRIANDO AS TABELAS
CREATE TABLE PAIS (
	SIGLA VARCHAR(3) PRIMARY KEY,
	NOME VARCHAR(50)
);

CREATE TABLE COPA (
	ano INT PRIMARY KEY,
	data_inicio DATE,
	data_fim DATE,
	cidade_abertura VARCHAR(50),
	pais VARCHAR(3),
	FOREIGN KEY (pais) REFERENCES PAIS(SIGLA)
);

CREATE TABLE PESSOA(
	cod int PRIMARY KEY,
	nome varchar(64),
	dt_nasc date,
	pais_nasc varchar(3),
	FOREIGN KEY (pais_nasc) REFERENCES PAIS(SIGLA)
);

CREATE TABLE EQUIPE_PAIS_ANO(
	sigla varchar(3),
	ano int,
	cod_equipe int PRIMARY KEY
);

CREATE TABLE EQUIPE(
	cod int,
	cod_pessoa int,
	funcao varchar(50),
	FOREIGN KEY (cod) REFERENCES EQUIPE_PAIS_ANO(cod_equipe),
	FOREIGN KEY (cod_pessoa) REFERENCES PESSOA(cod)
);

CREATE TABLE JOGO(
	numero int PRIMARY KEY,
	estadio varchar(50),
	cod_equipe_A int,
	gols_equipe_A int,
	cod_equipe_b int,
	gols_equipe_b int,
	ano int,
	FOREIGN KEY (ano) REFERENCES COPA(ano),
	FOREIGN KEY (cod_equipe_A) REFERENCES EQUIPE_PAIS_ANO(cod_equipe),
	FOREIGN KEY (cod_equipe_B) REFERENCES EQUIPE_PAIS_ANO(cod_equipe)
);

-- Preenche País
INSERT INTO PAIS(SIGLA,NOME)
VALUES
('BRA','Brasil'),
('POR','Portugal'),
('CMA','Costa do Marfim'),
('CNO','Coreia do Norte'),
('RSA','África do Sul')
;

-- Preenche Copa
INSERT INTO COPA(ano, data_inicio, data_fim, cidade_abertura,pais) VALUES (2010,'11-06-2010','11-07-2010', 'Johanesburgo','RSA');

-- Preenche Equipe_Pais_ano
INSERT INTO EQUIPE_PAIS_ANO(sigla,ano,cod_equipe)
VALUES
('BRA',2010,1),
('POR',2010,2),
('CMA',2010,3),
('CNO',2010,4);

-- Preenche Pessoa
INSERT INTO PESSOA(cod,pais_nasc,nome,dt_nasc)
VALUES
(1,'BRA','Júlio César','03-09-1979'),
(2,'BRA','Doniéber Alexander','22-10-1979'),
(3,'BRA','Heurelho da Silva','15-02-1981'),
(4,'BRA','Thiago Silva','22-09-1984'),
(5,'BRA','Maicon Douglas','26-07-1981'),
(6,'BRA','Lucimar da Silva','08-05-1978'),
(7,'BRA','Gilberto da Silva','25-04-1976'),
(8,'BRA','Michel Bastos','02-08-1983'),
(9,'BRA','Anderson Luis','13-02-1981'),
(10,'BRA','Juan Silveira','01-02-1979'),
(11,'BRA','Daniel Alves','06-05-1983'),
(12,'BRA','Ramires Santos','24-03-1987'),
(13,'BRA','Ricardo Izecson','22-04-1982'),
(14,'BRA','Josué Anunciado','19-07-1979'),
(15,'BRA','Felipe Melo','26-06-1983'),
(16,'BRA','José Kleberson','19-06-1979'),
(17,'BRA','Júlio Baptista','01-10-1981'),
(18,'BRA','Gilberto Silva','07-10-1976'),
(19,'BRA','Elano Ralph','14-06-1981'),
(20,'BRA','Róbson de Souza','25-01-1984'),
(21,'BRA','Luís Fabiano','08-11-1980'),
(22,'BRA','Nilmar Horonato','14-07-1984'),
(23,'BRA','Edinaldo Batista','02-04-1979'),
(24,'BRA','Carlos Caetano','31-10-1963'),
(25,'POR','Eduardo dos Reis','19-09-1982'),
(26,'POR','António Alberto','01-05-1982'),
(27,'POR','Daiel Márcio','25-09-1983'),
(28,'POR','Rolando Jorge','31-08-1985'),
(29,'POR','Ricardo Alberto','18-05-1978'),
(30,'POR','Paulo Ferreira','18-01-1979'),
(31,'POR','Bruno Alves','27-11-1981'),
(32,'POR','Ricardo Costa','16-05-1981'),
(33,'POR','Képler Laveran','26-02-1983'),
(34,'POR','Luis Miguel','04-01-1980'),
(35,'POR','Tiago Cardoso','02-05-1981'),
(36,'POR','Rubén Filipe','27-01-1985'),
(37,'POR','Pedro Mendes','26-02-1979'),
(38,'POR','Fábio Coentrão','11-03-1988'),
(39,'POR','Simão Sabrosa','30-10-1979'),
(40,'POR','Raúl Meireles','17-03-1983'),
(41,'POR','Miguel Veloso','11-05-1986'),
(42,'POR','Sergio Paulo','27-06-1980'),
(43,'POR','Anderson Luis','27-08-1977'),
(44,'POR','Cristiano Ronaldo','05-02-1985'),
(45,'POR','Liedson da Silva','17-12-1977'),
(46,'POR','Daniel Miguel','07-08-1983'),
(47,'POR','Hugo Miguel','23-05-1984'),
(48,'POR','Carlos Queiroz','01-03-19853'),
(49,'CMA','Daniel Yeboah','13-11-1985'),
(50,'CMA','Aristide Benoit','30-12-1981'),
(51,'CMA','Boubacar Barry','30-12-1979'),
(52,'CMA','Souleymane Bamba','13-01-1985'),
(53,'CMA','Kolo Abib','19-03-1981'),
(54,'CMA','Emmanuel Eboué','04-06-1983'),
(55,'CMA','Arthur Etienne','02-04-1983'),
(56,'CMA','Siaka Chico','22-02-1982'),
(57,'CMA','Lohoré Steve','08-02-1981'),
(58,'CMA','Benjamin Angoua','28-08-1986'),
(59,'CMA','Alain Didier','14-12-1980'),
(60,'CMA','Cheik Ismael','21-06-1986'),
(61,'CMA','Jean Jacques','15-03-1983'),
(62,'CMA','Emmanuel Kouamatian','31-12-1986'),
(63,'CMA','Yaya Touré','13-05-1983'),
(64,'CMA','Christian Ndri','04-06-1983'),
(65,'CMA','Gervais Yao','27-08-1987'),
(66,'CMA','Guy Roland','13-06-1981'),
(67,'CMA','Seydou Doumbia','31-12-1987'),
(68,'CMA','Salomon Kalou','05-08-1985'),
(69,'CMA','Aruna Dindaré','26-11-1980'),
(70,'CMA','Abdu Kader','06-08-1981'),
(71,'CMA','Didider Drogba','11-03-1978'),
(72,'CMA','Sven Göran','05-02-1948'),
(73,'CNO','Ri Myong-Guk','09-09-1986'),
(74,'CNO','Kim Myong-Gil','16-10-1984'),
(75,'CNO','Kim Myong-Won','15-07-1983'),
(76,'CNO','Cha Jong-Hyok','25-09-1985'),
(77,'CNO','Ri Jun-Il','24-08-1987'),
(78,'CNO','Pak Nam-Chol','02-07-1985'),
(79,'CNO','Ri Kwang-Chon','04-09-1985'),
(80,'CNO','Pak Chol-Jin','05-09-1985'),
(81,'CNO','Nam Song-Chol','07-05-1982'),
(82,'CNO','Ri Kwang-Hyok','17-04-1987'),
(83,'CNO','Ji Yun-Nam','20-11-1976'),
(84,'CNO','Mun In-Guk','29-09-1978'),
(85,'CNO','Pak Nam-Chol','03-10-1988'),
(86,'CNO','Kim Yong-Jun','19-07-1983'),
(87,'CNO','Ahn Young-Hak','25-10-1978'),
(88,'CNO','Ri Chol-Myong','18-02-1988'),
(89,'CNO','Kim Kyong-Il','11-12-1988'),
(90,'CNO','Pak Sung-Hyok','30-05-1990'),
(91,'CNO','Kim Kum-Il','10-10-1987'),
(92,'CNO','An Chol-Hyok','27-06-1985'),
(93,'CNO','Jong Tae-Se','02-03-1984'),
(94,'CNO','Hong Yong-Jo','22-05-1982'),
(95,'CNO','Choe Kum-Chol','09-02-1987'),
(96,'CNO','Kim Jong-Hun','01-09-1956');

--Preenche equipe
INSERT INTO EQUIPE(cod_pessoa,cod,funcao)
VALUES
(1, 1,'Jogador'),
(2, 1,'Jogador'),
(3, 1,'Jogador'),
(4, 1,'Jogador'),
(5, 1,'Jogador'),
(6, 1,'Jogador'),
(7, 1,'Jogador'),
(8, 1,'Jogador'),
(9, 1,'Jogador'),
(10, 1,'Jogador'),
(11, 1,'Jogador'),
(12, 1,'Jogador'),
(13, 1,'Jogador'),
(14, 1,'Jogador'),
(15, 1,'Jogador'),
(16, 1,'Jogador'),
(17, 1,'Jogador'),
(18, 1,'Jogador'),
(19, 1, 'Jogador'),
(20, 1,'Jogador'),
(21, 1, 'Jogador'),
(22, 1,'Jogador'),
(23, 1,'Jogador'),
(24, 1,'Treinador'),
(25, 2,'Jogador'),
(26, 2,'Jogador'),
(27, 2,'Jogador'),
(28, 2,'Jogador'),
(29, 2,'Jogador'),
(30, 2,'Jogador'),
(31, 2,'Jogador'),
(32, 2,'Jogador'),
(33, 2,'Jogador'),
(34, 2,'Jogador'),
(35, 2,'Jogador'),
(36, 2,'Jogador'),
(37, 2,'Jogador'),
(38, 2,'Jogador'),
(39, 2,'Jogador'),
(40, 2,'Jogador'),
(41, 2,'Jogador'),
(42, 2,'Jogador'),
(43, 2,'Jogador'),
(44, 2,'Jogador'),
(45, 2,'Jogador'),
(46, 2,'Jogador'),
(47, 2,'Jogador'),
(48, 2,'Treinador'),
(49, 3,'Jogador'),
(50, 3,'Jogador'),
(51, 3,'Jogador'),
(52, 3,'Jogador'),
(53, 3,'Jogador'),
(54, 3,'Jogador'),
(55, 3,'Jogador'),
(56, 3,'Jogador'),
(57, 3,'Jogador'),
(58, 3,'Jogador'),
(59, 3,'Jogador'),
(60, 3,'Jogador'),
(61, 3,'Jogador'),
(62, 3,'Jogador'),
(63, 3,'Jogador'),
(64, 3,'Jogador'),
(65, 3,'Jogador'),
(66, 3,'Jogador'),
(67, 3,'Jogador'),
(68, 3,'Jogador'),
(69, 3,'Jogador'),
(70, 3,'Jogador'),
(71, 3,'Jogador'),
(72, 3,'Treinador'),
(73, 4,'Jogador'),
(74, 4,'Jogador'),
(75, 4,'Jogador'),
(76, 4,'Jogador'),
(77, 4,'Jogador'),
(78, 4,'Jogador'),
(79, 4,'Jogador'),
(80, 4,'Jogador'),
(81, 4,'Jogador'),
(82, 4,'Jogador'),
(83, 4,'Jogador'),
(84, 4,'Jogador'),
(85, 4,'Jogador'),
(86, 4,'Jogador'),
(87, 4,'Jogador'),
(88, 4,'Jogador'),
(89, 4,'Jogador'),
(90, 4,'Jogador'),
(91, 4,'Jogador'),
(92, 4,'Jogador'),
(93, 4,'Jogador'),
(94, 4,'Jogador'),
(95, 4,'Jogador'),
(96, 4,'Treinador');

--Preenche Jogo
INSERT INTO JOGO(numero,estadio,gols_equipe_A,cod_equipe_A,gols_equipe_b,cod_equipe_b,ano)
VALUES
(1,'Nelson Mandela Bay Stadium', 0, 3, 0, 2,2010),
(2,'Ellis Park Stadium', 2, 1, 1,4,2010),
(3,'Soccer City', 3, 1, 1, 3,2010),
(4,'Green Point Stadium', 7,2, 0, 4,2010),
(5,'Moses Mabhida Stadium', 0,2, 0,1,2010),
(6,'Mbombela Stadium', 0, 4, 3,3,2010);

select * from copa;
select * from pessoa;
select * from equipe_pais_ano;
select * from equipe;
select * from jogo;

-- Prova Bloco C
-- a) Total de Gols de uma seleção diferente da Seleção Brasileira.
-- b) Estádios dos Jogos da Seleção Brasileira.

-- letra b
select estadio,B.sigla from jogo
inner join equipe_pais_ano B
on 
	B.cod_equipe = jogo.cod_equipe_a
	or
	B.cod_equipe = jogo.cod_equipe_b
GROUP BY estadio,B.sigla
HAVING B.sigla='BRA';

