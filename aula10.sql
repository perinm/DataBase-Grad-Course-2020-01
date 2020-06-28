CREATE TABLE tipo_curso(
	id SERIAL PRIMARY KEY,
	nome VARCHAR(32) NOT NULL
);

CREATE TABLE aluno(
	cpf VARCHAR(11) PRIMARY KEY,
	nome VARCHAR(32) NOT NULL,
	endereco VARCHAR(64) NOT NULL,
	email VARCHAR(32) NOT NULL
);

CREATE TABLE instrutor(
	cpf VARCHAR(11) PRIMARY KEY,
	nome VARCHAR(32) NOT NULL,
	telefone VARCHAR(11) NOT NULL
);

CREATE TABLE curso(
	id SERIAL PRIMARY KEY,
	nome VARCHAR(32) NOT NULL,
	id_tipo int NOT NULL,
	preco float(2) NOT NULL,
	cpf_instrutor VARCHAR(11) NOT NULL,
	FOREIGN KEY (id_tipo) REFERENCES tipo_curso(id),
	FOREIGN KEY (cpf_instrutor) REFERENCES instrutor(cpf)
);

CREATE TABLE venda(
	id SERIAL PRIMARY KEY,
	cpf_aluno VARCHAR(11) NOT NULL,
	data DATE NOT NULL,
	hora TIME NOT NULL,
	FOREIGN KEY (cpf_aluno) REFERENCES aluno(cpf)
);

CREATE TABLE venda_curso(
	id_venda INT NOT NULL,
	id_curso INT NOT NULL,
	valor float NOT NULL,
	FOREIGN KEY (id_venda) REFERENCES venda(id),
	FOREIGN KEY (id_curso) REFERENCES curso(id)
);