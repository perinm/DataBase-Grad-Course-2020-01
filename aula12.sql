delete from tipo;

insert into tipo (codigo,tipo) 
VALUES 	(1,'Banco de Dados'),
		(2,'Programação'),
		(3,'Modelagem de Dados');

select * from tipo;

delete from instrutor;

alter table instrutor add column TELEFONE varchar(9) NOT NULL;

insert into instrutor (cod, instrutor, telefone)
VALUES 	(1, 'André Milani', '1111-1111'),
		(2, 'Carlos Tosin', '1212-1212'),
		(3, 'Rodrigo Hagstrom', '1313-1313');

select * from instrutor;

delete from curso;

insert into curso (codigo, curso,tipo,instrutor,valor)
values 	(1, 'Java Fundamentos', 2, 2, 270),
		(2, 'Java Avançado', 2, 2, 330),
		(3, 'SQL Completo', 1, 1, 170),
		(4, 'Php Básico', 2, 1, 270);

select * from curso;

ALTER TABLE aluno DROP COLUMN nascimento;
ALTER TABLE aluno DROP COLUMN prev_inadimplencia;
ALTER TABLE aluno DROP COLUMN data_nascimento;

insert into aluno (codigo, aluno, endereco, email)
values 	(1, 'José', 'Rua XV de Novembro 72', 'jose@email.com.br'),
		(2, 'Wagner', 'Av. Paulista', 'wagner@email.com.br'),
		(3, 'Emílio', 'Rua Lajes 103, ap: 701', 'emilio@email.com.br'),
		(4, 'Cris', 'Rua Tauney 22', 'cris@email.com.br'),
		(5, 'Regina', 'Rua Salles 305', 'regina@email.com.br'),
		(6, 'Fernando', 'Av. Central 30', 'fernando@email.com.br');

select * from aluno;

delete from pedido;

insert into pedido (cod, aluno, timestamp)
values 	(1, 2, '15/04/2020, 11:23:32'),
		(2, 2, '15/04/2020, 14:36:21'),
		(3, 3, '16/04/2020, 11:17:45'),
		(4, 4, '17/04/2020, 14:27:22'),
		(5, 5, '18/04/2020, 11:18:19'),
		(6, 6, '19/04/2020, 13:47:35'),
		(7, 6, '20/04/2020, 18:13:44');

select * from pedido;

ALTER TABLE pedido_curso RENAME to PEDIDO_DETALHE;

insert into pedido_detalhe (pedido, curso, valor)
values 	(1, 1, 270),
		(1, 2, 330),
		(2, 1, 270),
		(2, 2, 330),
		(2, 3, 170),
		(3, 4, 270),
		(4, 2, 330),
		(4, 4, 270),
		(5, 3, 170),
		(6, 3, 170),
		(7, 4, 270);

select * from pedido_detalhe;

-- Exibir todas as informações de todos os alunos
select * from aluno;

-- Exibir somente o título de cada curso
select curso from curso;

-- Exibir somente o título de cada curso
select curso,valor from curso where valor > 200;

-- Exibir somente o título e valor de cada curso cujo preço seja maior que 200 e menor que 300
select curso,valor from curso where valor between 200 and 300;

-- Exibir as informações da tabela PEDIDOS para os pedidos realizados entre 15/04/2020 e 18/04/2020
select * from pedido where timestamp between '15/04/2020' and '19/04/2020';

-- Exibir as informações da tabela PEDIDOS para os pedidos realizados na data de 15/04/2020
select * from pedido where timestamp between '15/04/2020' and '16/04/2020';