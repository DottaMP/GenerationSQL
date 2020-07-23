create database db_cidade_das_carnes
default character set utf8
default collate utf8_general_ci;
use db_cidade_das_carnes;

create table tb_categoria (
	id bigint auto_increment,
    categoria varchar (20),
    aceitaVrVa boolean,
    delivery boolean,
    primary key (id)
) default charset = utf8;

create table tb_produto (
	id bigint auto_increment,
    nome varchar (400),
    preco decimal (5,2),
    delivery varchar(20),
    formaPgto varchar (10),
    estoque boolean,
    categoria_id bigint not null,
    primary key (id),
	foreign key (categoria_id) references tb_categoria (id)
) default charset = utf8;

insert into tb_categoria values
(default, "Bovinos", true, true),
(default, "Suínos", true, false),
(default, "Aves", true, true),
(default, "Carvão", false, false),
(default, "Espetos", true, true);

insert into tb_produto values
(default, 'Picanha Maturada 1kg', '55.99', 'Não', 'VR', True, 1),
(default, 'Chuleta Bovina 1kg', '38.99', 'Não', 'VA', True, 1),
(default, 'Costela Suína 1kg', '15.49', 'Não', 'Débito', True, 2),
(default, 'Bisteca 1kg', '27.79', 'Não', 'Dinheiro', True, 2),
(default, 'Coxa de Frango 1kg', '12.99', 'Não', 'Débito', True, 3),
(default, 'Asa de Frango 1kg', '7.94', 'Não', 'VR', True, 3),
(default, 'Carvão 10kg', '25.99', 'Não', 'Crédito', True, 4),
(default, 'Espetos variados 1kg', '10.49', 'Não', 'Débito', True, 5);

select * from tb_categoria;
select * from tb_produto;

select * from tb_produto where preco > 50.00;
select * from tb_produto where preco between 3.00 and 60.00;

select * from tb_produto where nome Like "%C%";

select * from tb_produto
	inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;
    
select tb_produto.nome, tb_categoria.categoria from tb_produto
	inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id
    where tb_categoria.categoria = "Bovinos";