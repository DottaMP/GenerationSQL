create database db_generation_game_online
default character set utf8
default collate utf8_general_ci;
use db_generation_game_online;

create table tb_classe (
	id bigint auto_increment,
    tipo varchar (20),
    arma varchar (20),
    armadura varchar (20),
    primary key (id)
) default charset = utf8;

create table tb_personagem (
	id bigint auto_increment,
    nome varchar (20),
    forca decimal (5,0),
    agilidade decimal (5,0),
    inteligencia decimal (5,0),
    poderEspecial decimal (6,0),
    classe_id bigint not null,
    primary key (id),
	foreign key (classe_id) references tb_classe (id)
) default charset = utf8;

insert into tb_classe values
(default, "Mago(a)", "Cajado", "Não Possui"),
(default, "Guerreiro(a)", "Espada", "Aço"),
(default, "Arqueiro(a)", "Arco e Fecha", "Madeira"),
(default, "Cavaleiro(a)", "Espada e Escudo", "Ferro"),
(default, "Gigante", "Machado", "Não Possui");

insert into tb_personagem values
(default, "Gandalf", 10000, 2000, 10000, 100000, 1),
(default, "Gimli", 5000, 10000, 10000, 40000, 3),
(default, "Aragorn", 6000, 6000, 6000, 6000, 2),
(default, "Mag o Poderoso", 10000, 0, 3000, 100000, 5),
(default, "Sandor", 7000, 3000, 4000, 50000, 4),
(default, "Melisandre", 10000, 1000, 10000, 100000, 1),
(default, "Brienne de Tarth", 10000, 1000, 7000, 70000, 4),
(default, "Arya Stark", 5000, 10000, 10000, 50000, 2);

select * from tb_classe;
select * from tb_personagem;

select * from tb_personagem where forca > 2000;
select * from tb_personagem where forca < 2000;

select * from tb_personagem where nome Like "%C%";

select * from tb_personagem
	inner join tb_classe on tb_classe.id = tb_personagem.classe_id;
    
select tb_personagem.nome, tb_classe.tipo from tb_personagem
	inner join tb_classe on tb_classe.id = tb_personagem.classe_id
    where tb_classe.tipo = "Guerreiro";
