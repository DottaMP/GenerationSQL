create database cadastro
default character set utf8
default collate utf8_general_ci;
use cadastro;
create table pessoas ( /*Criando uma table*/
	id int not null auto_increment,
	nome varchar(30) not null,
    nascimento date,
    sexo enum ('M','F'),
    peso decimal (5,2),
    altura decimal(3,2),
    nacionalidade varchar (20) default 'Brasil', 
    primary key (id) /*para não haver repetições de tuplas é fundamental utilizar a primary key*/
)default charset = utf8; 

insert into pessoas values /*Inserindo dados na tabela, basta seguir a mesma sequencia e ir inserindo os dados*/
(default, "Claúdio", "1975-4-22", "M", 99.0, 2.15, "Brasil"),
(default, "Pedro", "1999-12-3", "M", 87, 2, default),
(default, "Janaina", "1987-11-12", "F", 75.4, 1.66, "EUA");

desc pessoas; /*mostrar a descrição da tabela pessoas*/

alter table pessoas /*alterar na tabela pessoa adicionando uma nova coluna*/
add column profissao varchar (10); /*desse modo a profissão será add na última linha da tabela*/

alter table pessoas
drop column profissao; /*excluindo uma coluna da tabela pessoas*/

alter table pessoas add column profissao varchar (10) after nome; /*adicionando uma coluna na tabela pessoas, desse modo a coluna será add depois de nome*/
alter table pessoas add column codigo int first; /*adicionando uma coluna na tabela pessoas, desse modo a coluna será add como a primeira*/

alter table pessoas modify column profissao varchar(20); /*alterar o tipo do formato de uma coluna*/

alter table pessoas change column profissao prof varchar (20); /*Para aletar o nome de uma columa, no caso profissão para prof*/

alter table pessoas rename to serHumano; /*Para alterar o nome da tabela, no caso pessoas para serHumano*/
alter table serHumano rename to pessoas; /*Para alterar o nome da tabela, no caso serHumano para pessoas*/

drop table if exists cursos; /* Para apagar uma tabela inteira SE ELA EXISTIR, nessa caso ainda não existe, por isso não irá apagar*/
create table if not exists cursos ( /*só vai criar a tabela SE NÃO EXISTIR nenhuma outra com o mesmo nome. Se já existisse uma tabela cursos não seria possível criar*/
	nome varchar(30) not null unique, /*unique não deixa colocar dois cursos com o mesmo nome*/
    descricao text, /*text - para textos longos, ou descrição*/
    carga int unsigned, /*significa sem sinal, ou seja, não aceita números negativos*/
    totaulas int,
    ano year default '2020' /*se o curso não tiver ano vai preencher automáticamente para o 2020*/
)default charset = utf8;
alter table cursos add column idcursos int first; /*Para add coluna, nesse caso a coluna 'id' ficará em primeiro lugar*/
alter table cursos add primary key (idcursos); /*Para add uma primary key em uma tabela, nesse caso a primary key foi add no idcursos*/
desc cursos; /*mostrar a descrição da tabela cursos*/

