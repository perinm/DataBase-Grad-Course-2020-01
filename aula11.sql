--
-- Cria a tabela TIPO
--
CREATE TABLE TIPO (
	CODIGO SERIAL NOT NULL,	-- Código interno (PK)
	TIPO VARCHAR(32) NOT NULL,				-- Descrição
	PRIMARY KEY(CODIGO)					-- Define o campo CODIGO como PK (Primary Key)
);

SELECT * FROM TIPO;


--
-- Cria a tabela INSTRUTOR
--
CREATE TABLE INSTRUTOR (
	CODIGO SERIAL NOT NULL,	                    -- Código interno (PK)
	INSTRUTOR VARCHAR(64) NOT NULL,				-- Nome com até 64 caracteres
	TELEFONE VARCHAR(9) NULL,				    -- Telefone, podendo ser nulo caso não tenha
	PRIMARY KEY(CODIGO)					        -- Define o campo CODIGO como PK (Primary Key)
);

SELECT * FROM INSTRUTOR;

--
-- Cria a tabela CURSO
--
CREATE TABLE CURSO (
	CODIGO SERIAL NOT NULL,	-- Código interno (PK)
	CURSO VARCHAR(64) NOT NULL,				-- Título com até 64 caracteres
	TIPO INTEGER NOT NULL,				-- Código do tipo de curso (idêntico a PK em CURSO)
	INSTRUTOR INTEGER NOT NULL,			-- Código do instrutor (idêntico a PK em INSTRUTOR)
	VALOR REAL NOT NULL,					-- Valor do curso
	PRIMARY KEY(CODIGO),					-- Define o campo CODIGO como PK (Primary Key)
	FOREIGN KEY(TIPO) REFERENCES TIPO(CODIGO),		-- Cria o relacionamento (FK) com a tabela TIPO
	FOREIGN KEY(INSTRUTOR) REFERENCES INSTRUTOR(CODIGO)	-- Cria o relacionamento (FK) com a tabela INSTRUTOR
);

SELECT * FROM CURSO;

--
-- Cria a tabela ALUNO
--
CREATE TABLE ALUNO (
	CODIGO SERIAL NOT NULL,	                -- Código interno (PK)
	ALUNO VARCHAR(64) NOT NULL,				-- Nome com até 64 caracteres
	ENDERECO VARCHAR(230) NOT NULL,				-- Endereço com até 230 caracteres
	EMAIL VARCHAR(128) NOT NULL,				-- E-mail com até 128 caracteres
	PRIMARY KEY(CODIGO)					-- Define o campo CODIGO como PK (Primary Key)
);

SELECT * FROM ALUNO;

--
-- Cria a tabela PEDIDO
--
CREATE TABLE PEDIDO (
	CODIGO SERIAL NOT NULL,	                    -- Código interno (PK)
	ALUNO INTEGER NOT NULL,			-- Código do aluno (idêntico a PK em ALUNO)
	DATAHORA TIMESTAMP NOT NULL,				-- Armazena data e hora em uma única coluna
	PRIMARY KEY(CODIGO),					-- Define o campo CODIGO como PK (Primary Key)
	FOREIGN KEY(ALUNO) REFERENCES ALUNO(CODIGO)		-- Cria o relacionamento (FK) com a tabela ALUNO
);

SELECT * FROM PEDIDO;

--
-- Cria a tabela PEDIDO_DETALHE
--
CREATE TABLE PEDIDO_CURSO (
	PEDIDO INTEGER NOT NULL,			    -- Código do pedido (idêntico a PK em PEDIDO)
	CURSO INTEGER NOT NULL,			        -- Código do curso (idêntico a PK em CURSO)
	VALOR REAL NOT NULL,					-- Valor do curso
	PRIMARY KEY(PEDIDO, CURSO),				-- Define a chave primária composta
	FOREIGN KEY(PEDIDO) REFERENCES PEDIDO(CODIGO),		-- Cria o relacionamento (FK) com a tabela PEDIDO
	FOREIGN KEY(CURSO) REFERENCES CURSO(CODIGO)		-- Cria o relacionamento (FK) com a tabela CURSO
);

SELECT * FROM PEDIDO_CURSO;

--
-- Inclua a coluna DATA_NASCIMENTO na tabela ALUNO do tipo string, de tamanho 10 caracteres
--
--
-- Altere a coluna DATA_NASCIMENTO para NASCIMENTO e seu tipo de dado para DATE
--
--
-- Inclua o campo EMAIL na tabela INSTRUTOR, com tamanho de 100 caracteres
--
--
-- Remova o campo EMAIL da tabela INSTRUTOR
--
--Mais 8 alterações, sendo 3 de nome de coluna, 3 de tipo de coluna, 1 adição e 1 de deleção.

ALTER TABLE aluno
ADD COLUMN DATA_NASCIMENTO VARCHAR(10) NOT NULL;

ALTER TABLE aluno RENAME COLUMN DATA_NASCIMENTO TO NASCIMENTO;

ALTER TABLE aluno ALTER COLUMN nascimento TYPE date USING nascimento::date;

ALTER TABLE instrutor ADD COLUMN email VARCHAR(100) NOT NULL;

ALTER TABLE instrutor DROP COLUMN email;

ALTER TABLE pedido RENAME COLUMN codigo to cod;
ALTER TABLE pedido RENAME COLUMN datahora to timestamp;
ALTER TABLE instrutor RENAME COLUMN codigo to cod;

ALTER TABLE instrutor ALTER COLUMN telefone TYPE int USING telefone::int;
ALTER TABLE curso ALTER COLUMN valor TYPE float(2);
ALTER TABLE pedido_curso ALTER COLUMN valor TYPE float(2);

ALTER TABLE aluno ADD COLUMN prev_inadimplencia boolean NOT NULL;

ALTER TABLE instrutor DROP COLUMN telefone;