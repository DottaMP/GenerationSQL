create database escola;
use escola;

create table alunos(
	id bigint(5) auto_increment,
    nome varchar (50) not null,
    ra double,
    serie varchar(5),
    notaFinal double,
    ativo boolean,
    primary key (id)
);

insert into alunos (nome, ra, serie, notaFinal, ativo) values 
("Lorenzo Guilhermino", 123, "5", 7, true),
("Joaquim Guilhermino",	345, "7", 9, true),
("Larissa Guilhermino", 678, "3", 7, true),
("Marisa Silveira", 912, "1", 10, true),
("Guilherme Rodrigues", 234, "6", 8, true),
("Letícia Rodrigues", 456, "5", 7, true),
("Brian Silva", 677, "4", 6, true),
("Lucas Santos", 891, "2", 4, true),
("Luciane Santos", 224, "9", 5, true),
("Luana Silva", 444, "7", 6, true),
("Luane Santos", 666, "5", 7, true),
("Lorenzo Silva", 888, "8", 4, true),
("Lorenzo Santos", 111, "5", 6, true),
("Enzo Guilhermino", 746, "8", 5, true),
("Valentina Rosa", 837, "7", 10, true);

select * from alunos where notaFinal >= 7;

select * from alunos where notaFinal > 7;

update alunos set nome = "Valentina Rosário" where id = 15;

select * from alunos;