-- joins
create database joins_teste;

use joins_teste;

create table pessoa (
id int primary key auto_increment,
nome varchar(100),
idade int,
id_estado int,
constraint fk_estado foreign key (id_estado) references estado(id)
);

create table estado(
id int primary key auto_increment,
nome varchar(2));

insert into estado (nome) values 
('AP'),
('MG'),
('RR'),
('SP'),
('RJ');

insert into pessoa (nome, idade, id_estado) values
('Jose', 22, 4),
('Carla', 53, 2),
('Adriana', 34, 2);

select * from pessoa;

select * from estado;

select pessoa.nome, pessoa.idade, estado.nome
from pessoa
inner join estado on pessoa.id_estado = estado.id;

select p.nome, p.idade, e.nome
from pessoa p
inner join estado e on p.id_estado = e.id;

select p.nome, p.idade, e.nome
from pessoa p
left join estado e on p.id_estado = e.id;

select p.nome, p.idade, e.nome
from pessoa p
right join estado e on p.id_estado = e.id;

select p.nome, p.idade, e.nome
from pessoa p
right join estado e on p.id_estado = e.id
UNION
select p.nome, p.idade, e.nome
from pessoa p
left join estado e on p.id_estado = e.id;
