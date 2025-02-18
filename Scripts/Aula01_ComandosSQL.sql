-- Comandos: CREATE, USE, SELECT, SHOW, DESCRIBE, INSERT, UPDATE,
-- DELETE, DROP.

-- TIPOS DE DADOS: int, float, decimal, varchar, date (ano-mes-dia),
-- blob, enum

-- FORMATO DOS COMANDOS

/*
Parametros: primary key, auto_increment, not null
create database **nome_do_bd**;
use **nome_do_bd**;
create table **nome_tabela** (
**atributos separados por vírgula**
**nome_atributo1** tipo,
**nome_atributo2** tipo
);

insert into **nome_tabela** values (**valor_atributo1**, **valor_atributo2**);
insert into **nome_tablea** (**nome_atributo2**) values (**valor_atributo2**);

select * from **nome_tabela**; -- mostra todos os itens da tabela
select (**nome_atributo2**) from **nome_tabela**; -- mostra só os atributos desejados

update **nome_tabela**
set **nome_atributo** = 'novo_nome'
where **condição**

delete from **nome_tabela**
where **condição**
*/ 
create database teste;

use teste;

drop database teste;

show databases;
show tables;

describe a;
drop table a;

create table a (
	id int primary key auto_increment,
    nome varchar(50) not null
);

insert into a values (20, 'Jose');

insert into a (nome) values 
('Jose'),
('Maria'),
('Joao');


select * from a;

select (nome) from a;

update a
set nome = 'jose'
where nome = 'novo_nome';

delete from a
where nome = 'novo_nome';

select (nome) from a;

/*
Crie um novo banco de dados com o tema da disciplina "Jogos Digitais"
Crie uma tabela com pelo menos 3 atributos, sem contar o ID
Insira 5 itens na tabela
Mostre a tabela
Faça uma atualização de valor de algum item
Delete um item da tabela
Mostre a tabela"
*/
