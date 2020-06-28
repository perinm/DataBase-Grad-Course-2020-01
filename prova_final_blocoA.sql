-- 1 - O quarto aluno mais novo.
SELECT ALUNO FROM (
					SELECT DISTINCT ON (ALUNO.ALUNO) ALUNO.ALUNO, timestamp FROM
				  	PEDIDO INNER JOIN ALUNO ON PEDIDO.ALUNO = ALUNO.CODIGO
					ORDER BY ALUNO,timestamp
) Q
ORDER BY timestamp desc limit 1 OFFSET 3;

-- 2 - O segundo e o terceiro alunos mais novos.
SELECT ALUNO FROM (
					SELECT DISTINCT ON (ALUNO.ALUNO) ALUNO.ALUNO, timestamp FROM
				  	PEDIDO INNER JOIN ALUNO ON PEDIDO.ALUNO = ALUNO.CODIGO
					ORDER BY ALUNO,timestamp
) Q
ORDER BY timestamp desc limit 2 OFFSET 1;

-- 3 - O valor total de cada pedido realizado.
select
	pedido,
	sum(valor)
from
	pedido_detalhe
group by
	pedido;
	
-- 4 - O valor do curso mais barato.
select valor from curso
order by valor asc limit 1;

-- 5 - Exiba o número do pedido, nome do aluno e quantos cursos foram comprados no
-- pedido para todos os pedidos realizados que compraram três ou menos cursos.
select pedido,aluno.aluno,count(pedido_detalhe.curso) from pedido
inner join ALUNO on pedido.aluno = aluno.codigo
inner join PEDIDO_DETALHE on pedido.cod = pedido_detalhe.pedido
group by pedido,aluno.aluno
having count(pedido_detalhe.curso)<4;

-- Prova Bloco B

-- 6 - Crie uma Trigger que permita verificar o momento de inserção de dados na tabela curso.
CREATE TABLE curso_auditoria(
	codigo_curso serial NOT NULL,
	data_alteracao TEXT NOT NULL
);

select * from curso;
select * from curso_auditoria;

CREATE OR REPLACE FUNCTION curso_log_func()
RETURNS trigger AS $teste_trigger$
BEGIN
INSERT INTO curso_auditoria (data_alteracao) VALUES (current_timestamp);
RETURN NEW;
END;
$teste_trigger$
LANGUAGE plpgsql

CREATE TRIGGER log_trigger
AFTER INSERT ON curso
FOR EACH ROW
EXECUTE PROCEDURE curso_log_func();

-- 7 - Demonstre que sua Trigger da questão anterior está funcionando com uma inserção de um novo aluno.
INSERT INTO curso(codigo,curso,tipo,instrutor,valor)
VALUES
(5, 'Python para Jedis', 2, 2, 500)

select * from curso_auditoria;