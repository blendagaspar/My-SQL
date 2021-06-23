create database db_cidade_das_plantas;

use db_cidade_das_plantas;

create table tb_categoria(
id bigint auto_increment,
descricao varchar(255) not null,
ativo boolean not null,
primary key (id)
);

create table tb_produtos (
id bigint auto_increment,
nome varchar (255) not null,
preco decimal(10,2) not null,
qtproduto int not null,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_categoria (descricao, ativo) values ("Frutas",true);
insert into tb_categoria (descricao, ativo) values ("Verduras",true);
insert into tb_categoria (descricao, ativo) values ("Legumes",true);
insert into tb_categoria (descricao, ativo) values ("Temperos",true);

insert into tb_produtos (nome, preco, qtProduto, categoria_id) values ("banana", 10.00, 7, 1);
insert into tb_produtos (nome, preco, qtProduto, categoria_id) values ("açafrão", 30.00, 20, 4);
insert into tb_produtos (nome, preco, qtProduto, categoria_id) values ("chuchu", 32.00, 54, 3);
insert into tb_produtos (nome, preco, qtProduto, categoria_id) values ("tomate", 16.00, 56, 3);
insert into tb_produtos (nome, preco, qtProduto, categoria_id) values ("alho-poro", 40.00, 67, 4);
insert into tb_produtos (nome, preco, qtProduto, categoria_id) values ("couve", 30.00, 78, 2);
insert into tb_produtos (nome, preco, qtProduto, categoria_id) values ("espinafre", 45.00, 40, 2);
insert into tb_produtos (nome, preco, qtProduto, categoria_id) values ("abobrinha", 54.00, 80, 1);
insert into tb_produtos (nome, preco, qtProduto, categoria_id) values ("mandioca", 56.00, 70, 3);

select * from tb_produtos where preco > 50;
select * from tb_produtos where preco between 3 and 60 order by preco;
select * from tb_produtos where nome like "c%" order by nome;

select tb_produtos.id, tb_produtos.nome, tb_produtos.preco, tb_produtos.qtproduto, tb_categoria.descricao, tb_categoria.ativo 
from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id order by tb_categoria.descricao;

select tb_produtos.id, tb_produtos.nome, tb_produtos.preco, tb_produtos.qtproduto, tb_categoria.descricao, tb_categoria.ativo 
from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id where tb_produtos.categoria_id = 3 order by preco;
