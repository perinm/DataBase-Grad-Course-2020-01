-- Selecione os nomes de todos os alunos que já fizeram alguma matrícula, sem repetição.
SELECT DISTINCT(ALUNO.ALUNO) FROM PEDIDO INNER JOIN ALUNO ON PEDIDO.ALUNO = ALUNO.CODIGO;

-- Exiba o nome do aluno mais antigo
SELECT ALUNO FROM (
					SELECT DISTINCT ON (ALUNO.ALUNO) ALUNO.ALUNO, timestamp FROM
				  	PEDIDO INNER JOIN ALUNO ON PEDIDO.ALUNO = ALUNO.CODIGO
					ORDER BY ALUNO,timestamp
) Q
ORDER BY timestamp asc limit 1;

-- Exiba o nome do aluno mais recente
SELECT ALUNO FROM (
					SELECT DISTINCT ON (ALUNO.ALUNO) ALUNO.ALUNO, timestamp FROM
				  	PEDIDO INNER JOIN ALUNO ON PEDIDO.ALUNO = ALUNO.CODIGO
					ORDER BY ALUNO,timestamp
) Q
ORDER BY timestamp desc limit 1;

-- Exiba o nome do terceiro aluno mais antigo
SELECT ALUNO FROM (
					SELECT DISTINCT ON (ALUNO.ALUNO) ALUNO.ALUNO, timestamp FROM
				  	PEDIDO INNER JOIN ALUNO ON PEDIDO.ALUNO = ALUNO.CODIGO
					ORDER BY ALUNO,timestamp
) Q
ORDER BY timestamp asc limit 1 offset 2;

-- Exiba a quantidade de cursos que já foram vendidos
SELECT COUNT(*) FROM PEDIDO_DETALHE;

-- Exiba o valor total já arrecadado pelos cursos vendidos
select SUM(VALOR) from pedido_detalhe;

-- Exiba o valor médio cobrado por curso para o pedido cujo CODIGO é 2
select AVG(VALOR) from pedido_detalhe
where pedido=2;

-- Exiba o valor do curso mais caro
select valor from pedido_detalhe
order by valor desc limit 1;

-- Exiba o valor do curso mais barato
select valor from pedido_detalhe
order by valor asc limit 1;

-- Exiba o valor total de cada pedido realizado
select
	pedido,
	sum(valor)
from
	pedido_detalhe
group by
	pedido;
	
-- Exiba os nomes dos instrutores e a quantidade de cursos que cada um tem sob sua responsabilidade
SELECT INSTRUTOR.INSTRUTOR, COUNT(*) FROM CURSO
INNER JOIN INSTRUTOR
ON CURSO.INSTRUTOR = INSTRUTOR.COD
GROUP BY INSTRUTOR.INSTRUTOR;

-- Exiba o nome e endereço de todos os alunos que morem em Avenidas (Av.)
select * from aluno
where endereco like 'Av.%';