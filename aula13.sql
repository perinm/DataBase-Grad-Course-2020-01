select * from aluno;

update aluno SET email = 'cristiano@email01.com.br' WHERE aluno = 'Cris';

select * from curso;
select * from tipo;
select * from instrutor;

update curso SET valor=valor*1.1 where valor < 300;
update curso SET curso='Php Fundamentos' where codigo = 4;

select curso.curso,tipo.tipo,instrutor.instrutor,instrutor.telefone
from curso
inner join tipo on curso.tipo=tipo.codigo
inner join instrutor on curso.instrutor=instrutor.cod

select * from pedido;
select * from pedido_detalhe;

select pedido.cod as pedido,pedido.timestamp,pedido_detalhe.curso from pedido
inner join pedido_detalhe on pedido.cod=pedido_detalhe.pedido;

select pedido.cod as pedido,pedido.timestamp,aluno.aluno,curso.curso from pedido
inner join pedido_detalhe on pedido.cod=pedido_detalhe.pedido
inner join curso on pedido_detalhe.curso=curso.codigo
inner join aluno on pedido.aluno=aluno.codigo;

CREATE VIEW CURSOS_PROGRAMACAO as
select curso.curso,tipo.tipo,instrutor.instrutor
from curso
inner join tipo on curso.tipo=tipo.codigo
inner join instrutor on curso.instrutor=instrutor.cod

select * from CURSOS_PROGRAMACAO;

CREATE VIEW PEDIDOS_REALIZADOS as
select aluno.aluno,pedido.timestamp,pedido.cod as codigo_do_pedido
from pedido
inner join aluno on pedido.aluno=aluno.codigo;

select * from PEDIDOS_REALIZADOS;