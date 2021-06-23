
use atividade1;
create table ecomerce(
id bigint auto_increment,
Nome varchar(60) not null,
Preco decimal(10,2)not null,
Categoria varchar(60) not null,
Genero varchar(60) not null,
Marca varchar(60) not null,
primary key(id)
);


insert into ecomerce(Nome, Preco, Categoria, Genero, Marca) values (" Blusa de frio",500 , "Blusas", "feminino", "dolce gabbana");
insert into ecomerce(Nome, Preco, Categoria, Genero, Marca) values ("calça skin", 670, "calças", "feminino", "cartier");
insert into ecomerce(Nome, Preco, Categoria, Genero, Marca) values ("short ", 400, "shorts", "masculino", "nike");
insert into ecomerce(Nome, Preco, Categoria, Genero, Marca) values ("blusa de manga longa", 300 , "blusas", "feminino", "nike");
insert into ecomerce(Nome, Preco, Categoria, Genero, Marca) values ("calça1", 250 , "calças", "feminino", "cartier");
insert into ecomerce(Nome, Preco, Categoria, Genero, Marca) values ("Blusa 3", 200 , "calças", "feminino", "adidas");
insert into ecomerce(Nome, Preco, Categoria, Genero, Marca) values ("calça4", 560 , "calças", "feminino", "cartier");
insert into ecomerce(Nome, Preco, Categoria, Genero, Marca) values ("calça6", 420 , "calças", "feminino", "cartier");



select* from ecomerce where Preco > 500 ;

select* from ecomerce where Preco < 500 ;


update ecomerce set Nome = "Fato de treino", Preco= 210 , Genero= "Masculino"   where id= 5 ;

