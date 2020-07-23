create database db_construindo_a_nossa_vida
default character set utf8
default collate utf8_general_ci;
use db_construindo_a_nossa_vida;

create table tb_categoria (
	id bigint auto_increment,
    categoria varchar (20),
    retiraLoja boolean,
    delivery boolean,
    primary key (id)
) default charset = utf8;

create table tb_produto (
	id bigint auto_increment,
    nome varchar (400),
    preco decimal (5,2),
    departamento varchar (50),
    formaPgto varchar (10),
    estoque boolean,
    categoria_id bigint not null,
    primary key (id),
	foreign key (categoria_id) references tb_categoria (id)
) default charset = utf8;

insert into tb_categoria values
(default, "Cozinha", true, true),
(default, "Banheiro", true, true),
(default, "Tintas", true, true),
(default, "Portas e Janelas", true, true),
(default, "Pisos", true, true);

insert into tb_produto values
(default, 'Torneira elétrica 220V', '89.99', 'Cozinha e Lavanderia', 'Crédito', True, 1),
(default, 'Cuba para cozinha de aço inox', '289.99', 'Cozinha e Lavanderia', 'Crédito', True, 1),
(default, 'Ducha de parede', '469.90', 'Banheiro', 'Débito', True, 2),
(default, 'Gabinete de banheiro', '209.90', 'Banheiro', 'Dinheiro', True, 2),
(default, 'Tinta Coral 18L', '159.99', 'Tinta', 'Débito', True, 3),
(default, 'Tinta Suvinil Látex 18L', '262.90', 'Tintas', 'Crédito', True, 3),
(default, 'Janela Veneziana', '299.90', 'Portas e Janelas', 'Crédito', True, 4),
(default, 'Piso rotocolor', '9.90', 'Pisos e Revestimentos', 'Débito', True, 5);

select * from tb_categoria;
select * from tb_produto;

select * from tb_produto where preco > 50.00;
select * from tb_produto where preco between 3.00 and 60.00;

select * from tb_produto where nome Like "%C%";

select * from tb_produto
	inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;
    
select tb_produto.nome, tb_categoria.categoria from tb_produto
	inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id
    where tb_categoria.categoria = "Cozinha";