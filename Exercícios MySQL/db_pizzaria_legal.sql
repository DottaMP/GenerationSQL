create database db_pizzaria_legal
default character set utf8
default collate utf8_general_ci;
use db_pizzaria_legal;

create table tb_categoria (
	id bigint auto_increment,
    tipoMassa varchar (20),
    espessuraMassa varchar (20),
    borda varchar (20),
    primary key (id)
) default charset = utf8;

create table tb_pizza (
	id bigint auto_increment,
    nome varchar (20),
    preco decimal (5,2),
    tipoEntrega varchar(20),
    precoEntrega decimal (5,2),
    sabor varchar (20),
    categoria_id bigint not null,
    primary key (id),
	foreign key (categoria_id) references tb_categoria (id)
) default charset = utf8;

insert into tb_categoria values
(default, "Integral", "Fina", "Não"),
(default, "Nova-Iorquina", "Grossa", "Não"),
(default, "Siciliana", "Grossa", "Sim"),
(default, "Napolitana ", "Fina", "Não"),
(default, "Integral", "Grossa", "Sim");

insert into tb_pizza values
(default, 'Pizzaria Legal', '30.99', 'Delivery', '5.99', 'Margherita', 2),
(default, 'Pizzaria Legal', '24.99', 'Retirada', '0.00', 'Berinjela', 1),
(default, 'Pizzaria Legal', '49.99', 'Delivery', '5.99', '5 Queijos', 3),
(default, 'Pizzaria Legal', '35.99', 'Delivery', '5.99', 'Rúcula', 5),
(default, 'Pizzaria Legal', '19.99', 'Retirada', '0.00', 'Calabresa', 4),
(default, 'Pizzaria Legal', '29.99', 'Retirada', '0.00', 'Palmito', 4),
(default, 'Pizzaria Legal', '44.99', 'Delivery', '5.99', 'Brigadeiro', 5),
(default, 'Pizzaria Legal', '36.99', 'Delivery', '5.99', 'Moda do Chefe', 2);

select * from tb_categoria;
select * from tb_pizza;

select * from tb_pizza where preco > 45.00;
select * from tb_pizza where preco between 29.00 and 60.00;

select * from tb_pizza where sabor Like "%C%";

select * from tb_pizza
	inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id;
    
select tb_pizza.sabor, tb_categoria.tipoMassa from tb_pizza
	inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id
    where tb_categoria.tipoMassa = "Integral";
