create database db_RH2;

use db_RH2;

Create table tb_cargo(
	id bigint auto_increment,
    setor varchar(20),
    nivel varchar(10),
    responsavel varchar (20),
    primary key(id)
);

Create table tb_funcionario(
	id bigint auto_increment,
    nome varchar (50) not null,
    cpf varchar (14),
    telefone varchar(9),
    salario decimal (10,2),
    ativo boolean,
    cargo_id bigint not null,
    primary key (id),
    foreign key (cargo_id) references tb_cargo (id)
);

insert into tb_cargo (setor, nivel, responsavel) values
("Comercial", "Sênior", "Financeiro"),
("Logística", "Pleno", "Operacional"),
("Atendimento", "Júnior", "Operacional"),
("Emissão", "Pleno", "Financeiro"),
("Fiscal", "Sênior", "Financeiro");

insert into tb_funcionario (nome, cpf, telefone, salario, ativo, cargo_id) values 
("Maria da Silva", "111.222.333-45", "911112222", 2.500, true, 4),
("Maria da Conceição", "111.777.333-45", "922223333", 2.700, true, 5),
("Jose Santos", "222.222.333-45", "933333333", 1.500, true, 2),
("Fernanda Oliveira", "333.222.333-45", "944443333", 2.000, true, 3),
("Caio Andrade","444.222.333-45", "955553333", 2.700, true, 5),
("Maria do Carmo Siqueira", "555.222.333-45", "966663333", 2.200, true, 3),
("Sara Gonçalves", "666.222.333-45", "977773333", 2.500, true, 4),
("Felipe Agostinho", "777.222.333-45", "988883333", 1.500, true, 2),
("Fernando Oliveira", "888.222.333-45", "999993333", 3.000, true, 1),
("Luis Silva", "999.222.333-45", "922224444", 2.700, true, 5),
("Joana Fernandes", "111.333.333-45", "922225555", 2.200, true, 3),
("João Vicentini", "111.444.333-45", "933336666", 2.500, true, 4),
("Tatiana Silveira", "111.555.333-45", "944447777", 1.500, true, 2),
("Otávio Oliveira", "111.666.333-45", "955558888", 3.000, true, 1),
("Maria dos Santos", "999.333.555-78", "966669999", 1.500, true, 2);

select * from tb_funcionario where salario > 2.000;

select * from tb_funcionario where salario between 1.000 and 2.000;

select * from tb_funcionario where nome Like "%C%";

select * from tb_funcionario
	inner join tb_cargo on tb_cargo.id = tb_funcionario.cargo_id;

select tb_funcionario.nome, tb_cargo.setor from tb_funcionario
	inner join tb_cargo on tb_cargo.id = tb_funcionario.cargo_id
    where tb_cargo.setor = "Atendimento"