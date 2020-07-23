create database db_farmacia_do_bem
default character set utf8
default collate utf8_general_ci;
use db_farmacia_do_bem;

create table tb_categoria (
	id bigint auto_increment,
    categoria varchar (20),
    farmaciaPopular varchar (20),
    estacionamento varchar (20),
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
(default, "Perfumaria", "Não", "Sim"),
(default, "Analgésicos", "Sim", "Não"),
(default, "Vitaminas", "Não", "Sim"),
(default, "Medicamentos", "Sim", "Sim"),
(default, "Controlados", "Sim", "Sim");

insert into tb_produto values
(default, 'Protetor Solar Filtrum Ultra Seco FPS30 60g', '77.90', 'Não', 'Crédito', True, 1),
(default, 'Desodorante Feminino Rexona Clinical Classic Aerosol 150ml', '15.99', 'Sim', 'Dinheiro', True, 1),
(default, 'Analgésico Advil 400mg 3 Cápsulas Gel', '5.49', 'Não', 'Débito', True, 2),
(default, 'Lisador Dip Gotas 500mg Hypermarcas 20ml', '14.79', 'Não', 'Dinheiro', True, 2),
(default, 'Suplemento Vitamínico Lavitan Kids 60 Comprimidos Mastigáveis', '32.99', 'Não', 'Débito', false, 3),
(default, 'Vitamina D Addera D3 50.000UI Hypera 8 Cápsulas', '152.94', 'Sim', 'Crédito', True, 3),
(default, 'Nesina 25mg Takeda 30 Comprimidos', '77.95', 'Sim', 'Crédito', True, 4),
(default, 'Pasalix Pi Marjan 30 Comprimidos', '45.49', 'Não', 'Débito', True, 5);

select * from tb_categoria;
select * from tb_produto;

select * from tb_produto where preco > 50.00;
select * from tb_produto where preco between 3.00 and 60.00;

select * from tb_produto where nome Like "%B%";

select * from tb_produto
	inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;
    
select tb_produto.nome, tb_categoria.categoria from tb_produto
	inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id
    where tb_categoria.categoria = "Perfumaria";