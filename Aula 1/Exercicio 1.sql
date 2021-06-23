create database Atividade1;

use atividade1 ;
create table funcionarios(
id bigint auto_increment,
Nome varchar(60) not null,
Idade bigint(20)not null,
RG bigint(20) not null,
Salario decimal(10,2) not null,
Departamento varchar(60) not null,
primary key(id)
);


insert into funcionarios (Nome,idade , RG ,Salario, Departamento) values ("Joana Silva", 25, 3939393, 2100, "Atendimento ao cliente");
insert into funcionarios (Nome,idade , RG ,Salario, Departamento) values ("Camila joão", 30, 3939394,1000, "Recursos Humanos");
insert into funcionarios (Nome,idade , RG ,Salario, Departamento) values ("João silva", 27, 3939354,3000, "Facilities");
insert into funcionarios (Nome,idade , RG ,Salario, Departamento) values ("Fernando ferreira",40, 393934,1500, "Segurança");
insert into funcionarios (Nome,idade , RG ,Salario, Departamento) values ("Pedro valerio", 36, 3939356,2500, "Supply chain");


select* from funcionarios where salario >= 2000;


select* from funcionarios where salario <= 2000;


update funcionarios set Nome = "Luciana Pereira", Idade= 36  where id= 2;

select * from funcionarios