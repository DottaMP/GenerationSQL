create database servicos_rh;
use servicos_rh;

create table func(
	id bigint(5) auto_increment,
    nome varchar (50) not null,
    cpf varchar (14),
    setor varchar(50),
    salario double,
    ativo boolean,
    primary key (id)
);

insert into func (nome, cpf, setor, salario, ativo) values 
("Maria da Silva", "111.222.333-45", "RH", 2.500, true),
("Maria da Conceição", "111.777.333-45", "Financeiro", 2.700, true),
("Jose Santos", "222.222.333-45", "Logística", 1.500, true),
("Fernanda Oliveira", "333.222.333-45", "Operacional", 2.000, true),
("Caio Andrade","444.222.333-45", "Financeiro", 2.700, true),
("Maria do Carmo Siqueira", "555.222.333-45", "Atendimento ao Cliente", 2.200, true),
("Sara Gonçalves", "666.222.333-45", "RH", 2.500, true),
("Felipe Agostinho", "777.222.333-45", "Logística", 1.500, true),
("Fernando Oliveira", "888.222.333-45", "operacional", 200, true),
("Luis Silva", "999.222.333-45", "Financeiro", 2.700, true),
("Joana Fernandes", "111.333.333-45", "Atendimento ao Cliente", 2.200, true),
("João Vicentini", "111.444.333-45", "RH", 2.500, true),
("Tatiana Silveira", "111.555.333-45", "Logística", 1.500, true),
("Otávio Oliveira", "111.666.333-45", "Operacional", 2.00, true),
("Maria dos Santos", "999.333.555-78", "Logística", 1.500, true);

select * from func where salario < 2.000;

select * from func where salario > 2.000;

update func set nome = "Maria Silva" where id = 1;

select * from func;