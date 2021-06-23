create database db_farmacia_do_bem;
use db_farmacia_do_bem;

create table tb_categoria(
id bigint auto_increment primary key,
categoria varchar(255),
receita varchar(255) --   
);

create table tb_produto(
id bigint auto_increment primary key,
nome varchar(255) not null,
preco decimal (10,2) not null,
validade date,
id_cat bigint,
FOREIGN KEY (id_cat) REFERENCES tb_categoria (id)
);

insert into tb_categoria (categoria, receita) values ("termogenico", "com receita");
insert into tb_categoria (categoria, receita) values ("Analgésico", "Sem receita");
insert into tb_categoria (categoria, receita) values ("Cólicas abdominais", "Sem receita");
insert into tb_categoria (categoria, receita) values ("rinite", "Com receita");
insert into tb_categoria (categoria, receita) values ("soro", "sem receita");
insert into tb_categoria (categoria, receita) values ("charope", "sem ");

insert into tb_produto (nome, preco, validade, id_cat) values ("comprimido 1", 50.00, '2022-05-1', 3);
insert into tb_produto (nome, preco, validade, id_cat) values ("comprimido 2", 47.70, '2026-03-06', 2);
insert into tb_produto (nome, preco, validade, id_cat) values ("comprimido 3", 35.00, '2025-06-30', 2);
insert into tb_produto (nome, preco, validade, id_cat) values ("comprimido 4", 20.00, '2022-10-21', 5);
insert into tb_produto (nome, preco, validade, id_cat) values ("comprimido 5", 76.00, '2024-02-21', 1);
insert into tb_produto (nome, preco, validade, id_cat) values ("comprimido 6", 49.00, '2021-09-12', 4);
insert into tb_produto (nome, preco, validade, id_cat) values ("comprimido 7", 60.00, '2028-06-04', 4);
insert into tb_produto (nome, preco, validade, id_cat) values ("charope", 84.90, '2024-08-12', 6);

select * from tb_produto where preco > 50 order by preco;
select * from tb_produto where preco between 3 and 60 order by preco;

select * from tb_produto where nome like "b%";

select tb_produto.nome, tb_produto.preco, tb_produto.validade, tb_categoria.categoria, tb_categoria.receita 
from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.id_cat order by id_cat, preco;

select tb_produto.nome, tb_produto.preco, tb_produto.validade, tb_categoria.categoria, tb_categoria.receita 
from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.id_cat where id_cat = 2 order by preco;