-- CRIANDO AS TABELAS
CREATE TABLE COPA (
	ano INT,
	data_inicio DATE,
	data_fim DATE,
	cidade_abertura VARCHAR(50),
	PRIMARY KEY(ano)
);

CREATE TABLE PAIS_EQUIPE_PESSOA (
	codigo INT,
	nome_pais VARCHAR(50),
	sigla VARCHAR(3),
	nome_pessoa VARCHAR(50),
	data_nascimento DATE,
	funcao VARCHAR(50),
	ano INT,
	PRIMARY KEY(sigla,codigo),
	FOREIGN KEY (ano) REFERENCES COPA(ano)
);

CREATE TABLE JOGO (
	numero_jogo INT,
	estadio VARCHAR(50),
	gols_time_a INT,
	time_a VARCHAR(50),
	gols_time_b INT,
	time_b VARCHAR(50),
	ano INT,
	PRIMARY KEY(numero_jogo),
	FOREIGN KEY (ano) REFERENCES COPA(ano)
);

CREATE TABLE TIME_LADO_A (
	numero_jogo INT,
	gols INT,
	sigla VARCHAR(3),
	codigo INT,
	FOREIGN KEY(numero_jogo) REFERENCES JOGO (numero_jogo),
	FOREIGN KEY(sigla, codigo) REFERENCES PAIS_EQUIPE_PESSOA (sigla, codigo)
);

CREATE TABLE TIME_LADO_B (
	numero_jogo INT,
	gols INT,
	sigla VARCHAR(3),
	codigo INT,
	FOREIGN KEY(numero_jogo) REFERENCES JOGO (numero_jogo),
	FOREIGN KEY(sigla, codigo) REFERENCES PAIS_EQUIPE_PESSOA (sigla, codigo)
);

--INSERINDO DADOS NAS TABELAS
--TABELA COPA
INSERT INTO COPA(ano, data_inicio, data_fim, cidade_abertura) VALUES (2010,'11-06-2010','11-07-2010', 'Johanesburgo');

--TABELA PAIS_EQUIPE_PESSOA
--GRUPO > Brasil, Portugal, Costa do marfim, Coreia do norte
--BRASIL - BRA
INSERT INTO PAIS_EQUIPE_PESSOA(codigo, nome_pais, sigla, nome_pessoa, data_nascimento, funcao, ano) VALUES (1, 'Brasil','BRA','Júlio César','03-09-1979','Jogador', 2010);
INSERT INTO PAIS_EQUIPE_PESSOA(codigo, nome_pais, sigla, nome_pessoa, data_nascimento, funcao, ano) VALUES (2, 'Brasil','BRA','Doniéber Alexander','22-10-1979','Jogador', 2010);
INSERT INTO PAIS_EQUIPE_PESSOA(codigo, nome_pais, sigla, nome_pessoa, data_nascimento, funcao, ano) VALUES (3, 'Brasil','BRA','Heurelho da Silva','15-02-1981','Jogador', 2010);
INSERT INTO PAIS_EQUIPE_PESSOA(codigo, nome_pais, sigla, nome_pessoa, data_nascimento, funcao, ano) VALUES (4, 'Brasil','BRA','Thiago Silva','22-09-1984','Jogador', 2010);
INSERT INTO PAIS_EQUIPE_PESSOA(codigo, nome_pais, sigla, nome_pessoa, data_nascimento, funcao, ano) VALUES (5, 'Brasil','BRA','Maicon Douglas','26-07-1981','Jogador', 2010);
INSERT INTO PAIS_EQUIPE_PESSOA(codigo, nome_pais, sigla, nome_pessoa, data_nascimento, funcao, ano) VALUES (6, 'Brasil','BRA','Lucimar da Silva','08-05-1978','Jogador', 2010);
INSERT INTO PAIS_EQUIPE_PESSOA(codigo, nome_pais, sigla, nome_pessoa, data_nascimento, funcao, ano) VALUES (7, 'Brasil','BRA','Gilberto da Silva','25-04-1976','Jogador', 2010);
INSERT INTO PAIS_EQUIPE_PESSOA(codigo, nome_pais, sigla, nome_pessoa, data_nascimento, funcao, ano) VALUES (8, 'Brasil','BRA','Michel Bastos','02-08-1983','Jogador', 2010);
INSERT INTO PAIS_EQUIPE_PESSOA(codigo, nome_pais, sigla, nome_pessoa, data_nascimento, funcao, ano) VALUES (9, 'Brasil','BRA','Anderson Luis','13-02-1981','Jogador', 2010);
INSERT INTO PAIS_EQUIPE_PESSOA(codigo, nome_pais, sigla, nome_pessoa, data_nascimento, funcao, ano) VALUES (10, 'Brasil','BRA','Juan Silveira','01-02-1979','Jogador', 2010);
INSERT INTO PAIS_EQUIPE_PESSOA(codigo, nome_pais, sigla, nome_pessoa, data_nascimento, funcao, ano) VALUES (11, 'Brasil','BRA','Daniel Alves','06-05-1983','Jogador', 2010);
INSERT INTO PAIS_EQUIPE_PESSOA(codigo, nome_pais, sigla, nome_pessoa, data_nascimento, funcao, ano) VALUES (12, 'Brasil','BRA','Ramires Santos','24-03-1987','Jogador', 2010);
INSERT INTO PAIS_EQUIPE_PESSOA(codigo, nome_pais, sigla, nome_pessoa, data_nascimento, funcao, ano) VALUES (13, 'Brasil','BRA','Ricardo Izecson','22-04-1982','Jogador', 2010);
INSERT INTO PAIS_EQUIPE_PESSOA(codigo, nome_pais, sigla, nome_pessoa, data_nascimento, funcao, ano) VALUES (14, 'Brasil','BRA','Josué Anunciado','19-07-1979','Jogador', 2010);
INSERT INTO PAIS_EQUIPE_PESSOA(codigo, nome_pais, sigla, nome_pessoa, data_nascimento, funcao, ano) VALUES (15, 'Brasil','BRA','Felipe Melo','26-06-1983','Jogador', 2010);
INSERT INTO PAIS_EQUIPE_PESSOA(codigo, nome_pais, sigla, nome_pessoa, data_nascimento, funcao, ano) VALUES (16, 'Brasil','BRA','José Kleberson','19-06-1979','Jogador', 2010);
INSERT INTO PAIS_EQUIPE_PESSOA(codigo, nome_pais, sigla, nome_pessoa, data_nascimento, funcao, ano) VALUES (17, 'Brasil','BRA','Júlio Baptista','01-10-1981','Jogador', 2010);
INSERT INTO PAIS_EQUIPE_PESSOA(codigo, nome_pais, sigla, nome_pessoa, data_nascimento, funcao, ano) VALUES (18, 'Brasil','BRA','Gilberto Silva','07-10-1976','Jogador', 2010);
INSERT INTO PAIS_EQUIPE_PESSOA(codigo, nome_pais, sigla, nome_pessoa, data_nascimento, funcao, ano) VALUES (19, 'Brasil','BRA','Elano Ralph','14-06-1981', 'Jogador', 2010);
INSERT INTO PAIS_EQUIPE_PESSOA(codigo, nome_pais, sigla, nome_pessoa, data_nascimento, funcao, ano) VALUES (20, 'Brasil','BRA','Róbson de Souza','25-01-1984','Jogador', 2010);
INSERT INTO PAIS_EQUIPE_PESSOA(codigo, nome_pais, sigla, nome_pessoa, data_nascimento, funcao, ano) VALUES (21, 'Brasil','BRA','Luís Fabiano','08-11-1980', 'Jogador', 2010);
INSERT INTO PAIS_EQUIPE_PESSOA(codigo, nome_pais, sigla, nome_pessoa, data_nascimento, funcao, ano) VALUES (22, 'Brasil','BRA','Nilmar Horonato','14-07-1984','Jogador', 2010);
INSERT INTO PAIS_EQUIPE_PESSOA(codigo, nome_pais, sigla, nome_pessoa, data_nascimento, funcao, ano) VALUES (23, 'Brasil','BRA','Edinaldo Batista','02-04-1979','Jogador', 2010);
INSERT INTO PAIS_EQUIPE_PESSOA(codigo, nome_pais, sigla, nome_pessoa, data_nascimento, funcao, ano) VALUES (24, 'Brasil','BRA','Carlos Caetano','31-10-1963','Treinador', 2010);

--PORTUGAL - POR
INSERT INTO PAIS_EQUIPE_PESSOA(codigo, nome_pais, sigla, nome_pessoa, data_nascimento, funcao, ano) VALUES (25, 'Portugal','POR','Eduardo dos Reis','19-09-1982','Jogador', 2010);
INSERT INTO PAIS_EQUIPE_PESSOA(codigo, nome_pais, sigla, nome_pessoa, data_nascimento, funcao, ano) VALUES (26, 'Portugal','POR','António Alberto','01-05-1982','Jogador', 2010);
INSERT INTO PAIS_EQUIPE_PESSOA(codigo, nome_pais, sigla, nome_pessoa, data_nascimento, funcao, ano) VALUES (27, 'Portugal','POR','Daiel Márcio','25-09-1983','Jogador', 2010);
INSERT INTO PAIS_EQUIPE_PESSOA(codigo, nome_pais, sigla, nome_pessoa, data_nascimento, funcao, ano) VALUES (28, 'Portugal','POR','Rolando Jorge','31-08-1985','Jogador', 2010);
INSERT INTO PAIS_EQUIPE_PESSOA(codigo, nome_pais, sigla, nome_pessoa, data_nascimento, funcao, ano) VALUES (29, 'Portugal','POR','Ricardo Alberto','18-05-1978','Jogador', 2010);
INSERT INTO PAIS_EQUIPE_PESSOA(codigo, nome_pais, sigla, nome_pessoa, data_nascimento, funcao, ano) VALUES (30, 'Portugal','POR','Paulo Ferreira','18-01-1979','Jogador', 2010);
INSERT INTO PAIS_EQUIPE_PESSOA(codigo, nome_pais, sigla, nome_pessoa, data_nascimento, funcao, ano) VALUES (31, 'Portugal','POR','Bruno Alves','27-11-1981','Jogador', 2010);
INSERT INTO PAIS_EQUIPE_PESSOA(codigo, nome_pais, sigla, nome_pessoa, data_nascimento, funcao, ano) VALUES (32, 'Portugal','POR','Ricardo Costa','16-05-1981','Jogador', 2010);
INSERT INTO PAIS_EQUIPE_PESSOA(codigo, nome_pais, sigla, nome_pessoa, data_nascimento, funcao, ano) VALUES (33, 'Portugal','POR','Képler Laveran','26-02-1983','Jogador', 2010);
INSERT INTO PAIS_EQUIPE_PESSOA(codigo, nome_pais, sigla, nome_pessoa, data_nascimento, funcao, ano) VALUES (34, 'Portugal','POR','Luis Miguel','04-01-1980','Jogador', 2010);
INSERT INTO PAIS_EQUIPE_PESSOA(codigo, nome_pais, sigla, nome_pessoa, data_nascimento, funcao, ano) VALUES (35, 'Portugal','POR','Tiago Cardoso','02-05-1981','Jogador', 2010);
INSERT INTO PAIS_EQUIPE_PESSOA(codigo, nome_pais, sigla, nome_pessoa, data_nascimento, funcao, ano) VALUES (36, 'Portugal','POR','Rubén Filipe','27-01-1985','Jogador', 2010);
INSERT INTO PAIS_EQUIPE_PESSOA(codigo, nome_pais, sigla, nome_pessoa, data_nascimento, funcao, ano) VALUES (37, 'Portugal','POR','Pedro Mendes','26-02-1979','Jogador', 2010);
INSERT INTO PAIS_EQUIPE_PESSOA(codigo, nome_pais, sigla, nome_pessoa, data_nascimento, funcao, ano) VALUES (38, 'Portugal','POR','Fábio Coentrão','11-03-1988','Jogador', 2010);
INSERT INTO PAIS_EQUIPE_PESSOA(codigo, nome_pais, sigla, nome_pessoa, data_nascimento, funcao, ano) VALUES (39, 'Portugal','POR','Simão Sabrosa','30-10-1979','Jogador', 2010);
INSERT INTO PAIS_EQUIPE_PESSOA(codigo, nome_pais, sigla, nome_pessoa, data_nascimento, funcao, ano) VALUES (40, 'Portugal','POR','Raúl Meireles','17-03-1983','Jogador', 2010);
INSERT INTO PAIS_EQUIPE_PESSOA(codigo, nome_pais, sigla, nome_pessoa, data_nascimento, funcao, ano) VALUES (41, 'Portugal','POR','Miguel Veloso','11-05-1986','Jogador', 2010);
INSERT INTO PAIS_EQUIPE_PESSOA(codigo, nome_pais, sigla, nome_pessoa, data_nascimento, funcao, ano) VALUES (42, 'Portugal','POR','Sergio Paulo','27-06-1980','Jogador', 2010);
INSERT INTO PAIS_EQUIPE_PESSOA(codigo, nome_pais, sigla, nome_pessoa, data_nascimento, funcao, ano) VALUES (43, 'Portugal','POR','Anderson Luis','27-08-1977','Jogador', 2010);
INSERT INTO PAIS_EQUIPE_PESSOA(codigo, nome_pais, sigla, nome_pessoa, data_nascimento, funcao, ano) VALUES (44, 'Portugal','POR','Cristiano Ronaldo','05-02-1985','Jogador', 2010);
INSERT INTO PAIS_EQUIPE_PESSOA(codigo, nome_pais, sigla, nome_pessoa, data_nascimento, funcao, ano) VALUES (45, 'Portugal','POR','Liedson da Silva','17-12-1977','Jogador', 2010);
INSERT INTO PAIS_EQUIPE_PESSOA(codigo, nome_pais, sigla, nome_pessoa, data_nascimento, funcao, ano) VALUES (46, 'Portugal','POR','Daniel Miguel','07-08-1983','Jogador', 2010);
INSERT INTO PAIS_EQUIPE_PESSOA(codigo, nome_pais, sigla, nome_pessoa, data_nascimento, funcao, ano) VALUES (47, 'Portugal','POR','Hugo Miguel','23-05-1984','Jogador', 2010);
INSERT INTO PAIS_EQUIPE_PESSOA(codigo, nome_pais, sigla, nome_pessoa, data_nascimento, funcao, ano) VALUES (48, 'Portugal','POR','Carlos Queiroz','01-03-19853','Treinador', 2010);

--COSTA DO MARFIM - CMA
INSERT INTO PAIS_EQUIPE_PESSOA(codigo, nome_pais, sigla, nome_pessoa, data_nascimento, funcao, ano) VALUES (49, 'Costa do Marfim','CMA','Daniel Yeboah','13-11-1985','Jogador', 2010);
INSERT INTO PAIS_EQUIPE_PESSOA(codigo, nome_pais, sigla, nome_pessoa, data_nascimento, funcao, ano) VALUES (50, 'Costa do Marfim','CMA','Aristide Benoit','30-12-1981','Jogador', 2010);
INSERT INTO PAIS_EQUIPE_PESSOA(codigo, nome_pais, sigla, nome_pessoa, data_nascimento, funcao, ano) VALUES (51, 'Costa do Marfim','CMA','Boubacar Barry','30-12-1979','Jogador', 2010);
INSERT INTO PAIS_EQUIPE_PESSOA(codigo, nome_pais, sigla, nome_pessoa, data_nascimento, funcao, ano) VALUES (52, 'Costa do Marfim','CMA','Souleymane Bamba','13-01-1985','Jogador', 2010);
INSERT INTO PAIS_EQUIPE_PESSOA(codigo, nome_pais, sigla, nome_pessoa, data_nascimento, funcao, ano) VALUES (53, 'Costa do Marfim','CMA','Kolo Abib','19-03-1981','Jogador', 2010);
INSERT INTO PAIS_EQUIPE_PESSOA(codigo, nome_pais, sigla, nome_pessoa, data_nascimento, funcao, ano) VALUES (54, 'Costa do Marfim','CMA','Emmanuel Eboué','04-06-1983','Jogador', 2010);
INSERT INTO PAIS_EQUIPE_PESSOA(codigo, nome_pais, sigla, nome_pessoa, data_nascimento, funcao, ano) VALUES (55, 'Costa do Marfim','CMA','Arthur Etienne','02-04-1983','Jogador', 2010);
INSERT INTO PAIS_EQUIPE_PESSOA(codigo, nome_pais, sigla, nome_pessoa, data_nascimento, funcao, ano) VALUES (56, 'Costa do Marfim','CMA','Siaka Chico','22-02-1982','Jogador', 2010);
INSERT INTO PAIS_EQUIPE_PESSOA(codigo, nome_pais, sigla, nome_pessoa, data_nascimento, funcao, ano) VALUES (57, 'Costa do Marfim','CMA','Lohoré Steve','08-02-1981','Jogador', 2010);
INSERT INTO PAIS_EQUIPE_PESSOA(codigo, nome_pais, sigla, nome_pessoa, data_nascimento, funcao, ano) VALUES (58, 'Costa do Marfim','CMA','Benjamin Angoua','28-08-1986','Jogador', 2010);
INSERT INTO PAIS_EQUIPE_PESSOA(codigo, nome_pais, sigla, nome_pessoa, data_nascimento, funcao, ano) VALUES (59, 'Costa do Marfim','CMA','Alain Didier','14-12-1980','Jogador', 2010);
INSERT INTO PAIS_EQUIPE_PESSOA(codigo, nome_pais, sigla, nome_pessoa, data_nascimento, funcao, ano) VALUES (60, 'Costa do Marfim','CMA','Cheik Ismael','21-06-1986','Jogador', 2010);
INSERT INTO PAIS_EQUIPE_PESSOA(codigo, nome_pais, sigla, nome_pessoa, data_nascimento, funcao, ano) VALUES (61, 'Costa do Marfim','CMA','Jean Jacques','15-03-1983','Jogador', 2010);
INSERT INTO PAIS_EQUIPE_PESSOA(codigo, nome_pais, sigla, nome_pessoa, data_nascimento, funcao, ano) VALUES (62, 'Costa do Marfim','CMA','Emmanuel Kouamatian','31-12-1986','Jogador', 2010);
INSERT INTO PAIS_EQUIPE_PESSOA(codigo, nome_pais, sigla, nome_pessoa, data_nascimento, funcao, ano) VALUES (63, 'Costa do Marfim','CMA','Yaya Touré','13-05-1983','Jogador', 2010);
INSERT INTO PAIS_EQUIPE_PESSOA(codigo, nome_pais, sigla, nome_pessoa, data_nascimento, funcao, ano) VALUES (64, 'Costa do Marfim','CMA','Christian Ndri','04-06-1983','Jogador', 2010);
INSERT INTO PAIS_EQUIPE_PESSOA(codigo, nome_pais, sigla, nome_pessoa, data_nascimento, funcao, ano) VALUES (65, 'Costa do Marfim','CMA','Gervais Yao','27-08-1987','Jogador', 2010);
INSERT INTO PAIS_EQUIPE_PESSOA(codigo, nome_pais, sigla, nome_pessoa, data_nascimento, funcao, ano) VALUES (66, 'Costa do Marfim','CMA','Guy Roland','13-06-1981','Jogador', 2010);
INSERT INTO PAIS_EQUIPE_PESSOA(codigo, nome_pais, sigla, nome_pessoa, data_nascimento, funcao, ano) VALUES (67, 'Costa do Marfim','CMA','Seydou Doumbia','31-12-1987','Jogador', 2010);
INSERT INTO PAIS_EQUIPE_PESSOA(codigo, nome_pais, sigla, nome_pessoa, data_nascimento, funcao, ano) VALUES (68, 'Costa do Marfim','CMA','Salomon Kalou','05-08-1985','Jogador', 2010);
INSERT INTO PAIS_EQUIPE_PESSOA(codigo, nome_pais, sigla, nome_pessoa, data_nascimento, funcao, ano) VALUES (69, 'Costa do Marfim','CMA','Aruna Dindaré','26-11-1980','Jogador', 2010);
INSERT INTO PAIS_EQUIPE_PESSOA(codigo, nome_pais, sigla, nome_pessoa, data_nascimento, funcao, ano) VALUES (70, 'Costa do Marfim','CMA','Abdu Kader','06-08-1981','Jogador', 2010);
INSERT INTO PAIS_EQUIPE_PESSOA(codigo, nome_pais, sigla, nome_pessoa, data_nascimento, funcao, ano) VALUES (71, 'Costa do Marfim','CMA','Didider Drogba','11-03-1978','Jogador', 2010);
INSERT INTO PAIS_EQUIPE_PESSOA(codigo, nome_pais, sigla, nome_pessoa, data_nascimento, funcao, ano) VALUES (72, 'Costa do Marfim','CMA','Sven Göran','05-02-1948','Treinador', 2010);

--COREIA DO NORTE - CNO
INSERT INTO PAIS_EQUIPE_PESSOA(codigo, nome_pais, sigla, nome_pessoa, data_nascimento, funcao, ano) VALUES (73, 'Coreia do Norte','CNO','Ri Myong-Guk','09-09-1986','Jogador', 2010);
INSERT INTO PAIS_EQUIPE_PESSOA(codigo, nome_pais, sigla, nome_pessoa, data_nascimento, funcao, ano) VALUES (74, 'Coreia do Norte','CNO','Kim Myong-Gil','16-10-1984','Jogador', 2010);
INSERT INTO PAIS_EQUIPE_PESSOA(codigo, nome_pais, sigla, nome_pessoa, data_nascimento, funcao, ano) VALUES (75, 'Coreia do Norte','CNO','Kim Myong-Won','15-07-1983','Jogador', 2010);
INSERT INTO PAIS_EQUIPE_PESSOA(codigo, nome_pais, sigla, nome_pessoa, data_nascimento, funcao, ano) VALUES (76, 'Coreia do Norte','CNO','Cha Jong-Hyok','25-09-1985','Jogador', 2010);
INSERT INTO PAIS_EQUIPE_PESSOA(codigo, nome_pais, sigla, nome_pessoa, data_nascimento, funcao, ano) VALUES (77, 'Coreia do Norte','CNO','Ri Jun-Il','24-08-1987','Jogador', 2010);
INSERT INTO PAIS_EQUIPE_PESSOA(codigo, nome_pais, sigla, nome_pessoa, data_nascimento, funcao, ano) VALUES (78, 'Coreia do Norte','CNO','Pak Nam-Chol','02-07-1985','Jogador', 2010);
INSERT INTO PAIS_EQUIPE_PESSOA(codigo, nome_pais, sigla, nome_pessoa, data_nascimento, funcao, ano) VALUES (79, 'Coreia do Norte','CNO','Ri Kwang-Chon','04-09-1985','Jogador', 2010);
INSERT INTO PAIS_EQUIPE_PESSOA(codigo, nome_pais, sigla, nome_pessoa, data_nascimento, funcao, ano) VALUES (80, 'Coreia do Norte','CNO','Pak Chol-Jin','05-09-1985','Jogador', 2010);
INSERT INTO PAIS_EQUIPE_PESSOA(codigo, nome_pais, sigla, nome_pessoa, data_nascimento, funcao, ano) VALUES (81, 'Coreia do Norte','CNO','Nam Song-Chol','07-05-1982','Jogador', 2010);
INSERT INTO PAIS_EQUIPE_PESSOA(codigo, nome_pais, sigla, nome_pessoa, data_nascimento, funcao, ano) VALUES (82, 'Coreia do Norte','CNO','Ri Kwang-Hyok','17-04-1987','Jogador', 2010);
INSERT INTO PAIS_EQUIPE_PESSOA(codigo, nome_pais, sigla, nome_pessoa, data_nascimento, funcao, ano) VALUES (83, 'Coreia do Norte','CNO','Ji Yun-Nam','20-11-1976','Jogador', 2010);
INSERT INTO PAIS_EQUIPE_PESSOA(codigo, nome_pais, sigla, nome_pessoa, data_nascimento, funcao, ano) VALUES (84, 'Coreia do Norte','CNO','Mun In-Guk','29-09-1978','Jogador', 2010);
INSERT INTO PAIS_EQUIPE_PESSOA(codigo, nome_pais, sigla, nome_pessoa, data_nascimento, funcao, ano) VALUES (85, 'Coreia do Norte','CNO','Pak Nam-Chol','03-10-1988','Jogador', 2010);
INSERT INTO PAIS_EQUIPE_PESSOA(codigo, nome_pais, sigla, nome_pessoa, data_nascimento, funcao, ano) VALUES (86, 'Coreia do Norte','CNO','Kim Yong-Jun','19-07-1983','Jogador', 2010);
INSERT INTO PAIS_EQUIPE_PESSOA(codigo, nome_pais, sigla, nome_pessoa, data_nascimento, funcao, ano) VALUES (87, 'Coreia do Norte','CNO','Ahn Young-Hak','25-10-1978','Jogador', 2010);
INSERT INTO PAIS_EQUIPE_PESSOA(codigo, nome_pais, sigla, nome_pessoa, data_nascimento, funcao, ano) VALUES (88, 'Coreia do Norte','CNO','Ri Chol-Myong','18-02-1988','Jogador', 2010);
INSERT INTO PAIS_EQUIPE_PESSOA(codigo, nome_pais, sigla, nome_pessoa, data_nascimento, funcao, ano) VALUES (89, 'Coreia do Norte','CNO','Kim Kyong-Il','11-12-1988','Jogador', 2010);
INSERT INTO PAIS_EQUIPE_PESSOA(codigo, nome_pais, sigla, nome_pessoa, data_nascimento, funcao, ano) VALUES (90, 'Coreia do Norte','CNO','Pak Sung-Hyok','30-05-1990','Jogador', 2010);
INSERT INTO PAIS_EQUIPE_PESSOA(codigo, nome_pais, sigla, nome_pessoa, data_nascimento, funcao, ano) VALUES (91, 'Coreia do Norte','CNO','Kim Kum-Il','10-10-1987','Jogador', 2010);
INSERT INTO PAIS_EQUIPE_PESSOA(codigo, nome_pais, sigla, nome_pessoa, data_nascimento, funcao, ano) VALUES (92, 'Coreia do Norte','CNO','An Chol-Hyok','27-06-1985','Jogador', 2010);
INSERT INTO PAIS_EQUIPE_PESSOA(codigo, nome_pais, sigla, nome_pessoa, data_nascimento, funcao, ano) VALUES (93, 'Coreia do Norte','CNO','Jong Tae-Se','02-03-1984','Jogador', 2010);
INSERT INTO PAIS_EQUIPE_PESSOA(codigo, nome_pais, sigla, nome_pessoa, data_nascimento, funcao, ano) VALUES (94, 'Coreia do Norte','CNO','Hong Yong-Jo','22-05-1982','Jogador', 2010);
INSERT INTO PAIS_EQUIPE_PESSOA(codigo, nome_pais, sigla, nome_pessoa, data_nascimento, funcao, ano) VALUES (95, 'Coreia do Norte','CNO','Choe Kum-Chol','09-02-1987','Jogador', 2010);
INSERT INTO PAIS_EQUIPE_PESSOA(codigo, nome_pais, sigla, nome_pessoa, data_nascimento, funcao, ano) VALUES (96, 'Coreia do Norte','CNO','Kim Jong-Hun','01-09-1956','Treinador', 2010);

--TABELA JOGOS
INSERT INTO JOGO(numero_jogo, estadio, gols_time_a, time_a, gols_time_b, time_b, ano) VALUES (1,'Nelson Mandela Bay Stadium', 0, 'Costa do Marfim', 0, 'Portugal', 2010);
INSERT INTO JOGO(numero_jogo, estadio, gols_time_a, time_a, gols_time_b, time_b, ano) VALUES (2,'Ellis Park Stadium', 2, 'Brasil', 1,'Coreia do Norte', 2010);
INSERT INTO JOGO(numero_jogo, estadio, gols_time_a, time_a, gols_time_b, time_b, ano) VALUES (3,'Soccer City', 3, 'Brasil', 1, 'Costa do Marfim',2010);
INSERT INTO JOGO(numero_jogo, estadio, gols_time_a, time_a, gols_time_b, time_b, ano) VALUES (4,'Green Point Stadium', 7,'Portugal', 0, 'Coreia do Norte', 2010);
INSERT INTO JOGO(numero_jogo, estadio, gols_time_a, time_a, gols_time_b, time_b, ano) VALUES (5,'Moses Mabhida Stadium', 0,'Portugal', 0,'Brasil', 2010);
INSERT INTO JOGO(numero_jogo, estadio, gols_time_a, time_a, gols_time_b, time_b, ano) VALUES (6,'Mbombela Stadium', 0, 'Coreia do Norte', 3,'Costa do Marfim',2010);

--TABELA TIME_LADO_A
INSERT INTO TIME_LADO_A(numero_jogo, gols, sigla, codigo) VALUES(1, 0, 'CMA', NULL);
INSERT INTO TIME_LADO_A(numero_jogo, gols, sigla, codigo) VALUES(2, 1, 'BRA', 5);
INSERT INTO TIME_LADO_A(numero_jogo, gols, sigla, codigo) VALUES(2, 1, 'BRA', 19);
INSERT INTO TIME_LADO_A(numero_jogo, gols, sigla, codigo) VALUES(3, 2, 'BRA', 21);
INSERT INTO TIME_LADO_A(numero_jogo, gols, sigla, codigo) VALUES(3, 1, 'BRA', 19);
INSERT INTO TIME_LADO_A(numero_jogo, gols, sigla, codigo) VALUES(4, 1, 'POR', 40);
INSERT INTO TIME_LADO_A(numero_jogo, gols, sigla, codigo) VALUES(4, 1, 'POR', 39);
INSERT INTO TIME_LADO_A(numero_jogo, gols, sigla, codigo) VALUES(4, 1, 'POR', 47);
INSERT INTO TIME_LADO_A(numero_jogo, gols, sigla, codigo) VALUES(4, 2, 'POR', 35);
INSERT INTO TIME_LADO_A(numero_jogo, gols, sigla, codigo) VALUES(4, 1, 'POR', 45);
INSERT INTO TIME_LADO_A(numero_jogo, gols, sigla, codigo) VALUES(4, 1, 'POR', 44);
INSERT INTO TIME_LADO_A(numero_jogo, gols, sigla, codigo) VALUES(5, 0, 'POR', NULL);
INSERT INTO TIME_LADO_A(numero_jogo, gols, sigla, codigo) VALUES(6, 0, 'CNO', NULL);

--TABELA TIME_LADO_B
INSERT INTO TIME_LADO_B(numero_jogo, gols, sigla, codigo) VALUES(1, 0, 'POR', NULL);
INSERT INTO TIME_LADO_B(numero_jogo, gols, sigla, codigo) VALUES(2, 1, 'CNO', 83);
INSERT INTO TIME_LADO_B(numero_jogo, gols, sigla, codigo) VALUES(3, 1, 'CMA', 71);
INSERT INTO TIME_LADO_B(numero_jogo, gols, sigla, codigo) VALUES(4, 0, 'CNO', NULL);
INSERT INTO TIME_LADO_B(numero_jogo, gols, sigla, codigo) VALUES(5, 0, 'BRA', NULL);
INSERT INTO TIME_LADO_B(numero_jogo, gols, sigla, codigo) VALUES(6, 1, 'CMA', 63);
INSERT INTO TIME_LADO_B(numero_jogo, gols, sigla, codigo) VALUES(6, 1, 'CMA', 64);
INSERT INTO TIME_LADO_B(numero_jogo, gols, sigla, codigo) VALUES(6, 1, 'CMA', 68);
