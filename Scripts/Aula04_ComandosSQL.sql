-- Comandos: CREATE, USE, SELECT, SHOW, DESCRIBE, INSERT, UPDATE, DELETE, DROP.

-- TIPOS DE DADOS: int, float, decimal, varchar, date (ano-mes-dia), blob, enum

-- FORMATO DOS COMANDOS

/*
Parametros: primary key, auto_increment, not null
create database **nome_do_bd**;
use **nome_do_bd**;4
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
