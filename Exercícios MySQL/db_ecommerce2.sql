create database ecommerce2;

use ecommerce2;

Create table tb_categoria(
	id bigint auto_increment,
    categoria varchar(20) not null,
    empresa varchar(20),
    palavraChave varchar (200),
    primary key(id)
);

Create table tb_produto(
	id bigint(5) auto_increment,
    nome varchar (50) not null,
    preco decimal(10,2),
    setor varchar(50),
    filial varchar(50),
    ativo boolean,
    categoria_id bigint not null,
    primary key (id),
    foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_categoria (categoria, empresa, palavraChave) Values
('Eletrônicos', 'Casas Bahia', 'tv rádio notebook'),
('Mobiliário', 'Etna', 'guarda-roupa armário sofá cama'),
('Livraria', 'Saraiva', 'livro leitura'),
('Eletrodoméstico', 'Lojas Americanas', 'cozinha'),
('Games', 'Magazine Luiza', 'xbox ps console nintendo');

insert into tb_produto (nome, preco, setor, filial, ativo, categoria_id) values 
("Smartphone LG k12", 980.50, "Eletrônico", "Casas Bahia", true, 1),
("Smartphone Xiaomi MI 8", 1980.00, "Eletrônico", "Magazine Luiza", true, 1),
("Smartphone Xiaomi Note 8", 2300.00, "Eletrônico", "Lojas Americanas", true, 1),
("Notebook Acer", 3980.00, "Eletrônico", "Casas Bahia", true, 1),
("TV LG Smart TV 4k", 4700.00, "Eletrônico", "Amazon", true, 1),
("Conjunto Sofá 2 e 3 Lugares", 2700.00, "Mobiliário", "Etna", true, 2),
("Poltrona Reclinável", 1780.00, "Mobiliário", "Ponto Frio", true, 2),
("Guarda-Roupa 5 Portas", 1500.00, "Mobiliário", "Etna", true, 2),
("Xbox One 1T", 1980.00, "Games", "Casas Bahia", true, 5),
("Livro: O Homem que não as Mulheres", 40.00, "Livraria", "Saraiva", true, 3),
("Livro: Fronteira do Universo", 35.00, "Livraria", "Livraria Cultura", true, 3),
("Cama de Casal", 945.00, "Mobiliário", "Casas Bahia", true, 2),
("Microondas", 380.00, "Eletrodoméstico", "Lojas Americanas", true, 4),
("Forno Elétrico", 1080.00, "Eletrodoméstico", "Casas Bahia", true, 4),
("PS4", 2780.00, "Games", "Casas Bahia", true, 5);

select * from tb_produto where preco > 2000;

select * from tb_produto where preco between 1000 and 2000;

select * from tb_produto where nome Like "%C%";

select * from tb_produto
	inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;

select tb_produto.nome, tb_categoria.categoria from tb_produto
	inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id
    where tb_categoria.categoria = "Games"