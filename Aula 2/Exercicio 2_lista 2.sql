-- Exercicio 1 - lista 2 - Blenda Gaspar

create database db_pizzaria_legal;
use db_pizzaria_legal;

create table tb_categoria (
id bigint auto_increment,
tipo varchar(255) , -- opções normal , vip , doce
tamanho varchar(255), -- opções P, M, G
primary key (id)
);

create table tb_pizza(
id bigint auto_increment,
sabor varchar(255),
preco decimal (5,2),
categoria_id bigint,
disponivel boolean,
primary key (id),
foreign key(categoria_id) references tb_categoria (id)
);

insert into tb_categoria (tipo, tamanho) values ("normal", "G");
insert into tb_categoria (tipo, tamanho) values ("normal", "M");
insert into tb_categoria (tipo, tamanho) values ("vip", "P");
insert into tb_categoria (tipo, tamanho) values ("vip", "G");
insert into tb_categoria (tipo, tamanho) values ("doce ", "P");

insert into tb_pizza (sabor, preco, categoria_id, disponivel) values ("calabresa", 20.00, 1, true);
insert into tb_pizza (sabor, preco, categoria_id, disponivel) values ("chocolate", 40.00, 5, true);
insert into tb_pizza (sabor, preco, categoria_id, disponivel) values ("Calabresa com chedar", 60.00, 4, true);
insert into tb_pizza (sabor, preco, categoria_id, disponivel) values ("carne seca", 38.00, 2, false);
insert into tb_pizza (sabor, preco, categoria_id, disponivel) values ("milho com brocolis", 33.00, 5, true);
insert into tb_pizza (sabor, preco, categoria_id, disponivel) values ("Rucula", 45.00, 4, false);
insert into tb_pizza (sabor, preco, categoria_id, disponivel) values ("carne moida", 54.00, 2, true);
insert into tb_pizza (sabor, preco, categoria_id, disponivel) values ("romeu e julieta", 38.00, 5, true);

select sabor, preco, disponivel from tb_pizza where preco > 45 order by preco;
select sabor, preco, disponivel from tb_pizza where preco between 29 and 60 order by preco;
select sabor, preco, disponivel from tb_pizza where sabor like "c%";

select tb_pizza.id, tb_pizza.sabor, tb_pizza.preco, tb_pizza.disponivel as disponível, tb_categoria.tipo, tb_categoria.tamanho from tb_pizza inner join tb_categoria 
on tb_categoria.id = tb_pizza.categoria_id order by disponivel DESC, tb_categoria.id, tb_pizza.preco;

select tb_pizza.id, tb_pizza.sabor, tb_pizza.preco, tb_pizza.disponivel as disponível, tb_categoria.tipo, tb_categoria.tamanho from tb_pizza inner join tb_categoria 
on tb_categoria.id = tb_pizza.categoria_id where tb_categoria.id = 5 order by preco;

