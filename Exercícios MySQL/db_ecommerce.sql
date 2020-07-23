create database ecommerce;
use ecommerce;

create table produtos(
	id bigint(5) auto_increment,
    nome varchar (50) not null,
    preco double,
    categoria varchar(50),
    empresa varchar(50),
    ativo boolean,
    primary key (id)
);

insert into produtos (nome, preco, categoria, empresa, ativo) values 
("Smartphone LG k12", 980, "Eletrônico", "Casas Bahia", true),
("Smartphone Xiaomi MI 8", 1980, "Eletrônico", "Magazine Luiza", true),
("Smartphone Xiaomi Note 8", 2380, "Eletrônico", "Lojas Americanas", true),
("Notebook Acer", 3980, "Eletrônico", "Casas Bahia", true),
("TV LG Smart TV 4k", 4700, "Eletrônico", "Amazon", true),
("Conjunto Sofá 2 e 3 Lugares", 2700, "Mobiliário", "Etna", true),
("Poltrona Reclinável", 1780, "Mobiliário", "Ponto Frio", true),
("Guarda-Roupa 5 Portas", 1500, "Mobiliário", "Etna", true),
("Xbox One 1T", 1980, "Games", "Casas Bahia", true),
("Livro: O Homem que não as Mulheres", 40, "Livraria", "Saraiva", true),
("Livro: Fronteira do Universo", 35, "Livraria", "Livraria Cultura", true),
("Puff", 45, "Mobiliário", "Casas Bahia", true),
("Microondas", 380, "Eletrodoméstico", "Lojas Americanas", true),
("Notebook Sony", 3580, "Eletrônico", "Casas Bahia", true),
("Smartphone LG k11", 780, "Eletrônico", "Casas Bahia", true);

select * from produtos where preco > 500;

select * from produtos where preco < 500;

update produtos set nome = "Smartphone LG k12+" where id = 15;

select * from produtos;