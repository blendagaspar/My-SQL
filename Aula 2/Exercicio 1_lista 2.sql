-- Blenda gaspar ,  lista 2 , exercicio 1

use db_generation_game_online;

create table tb_classe(
id bigint auto_increment primary key,
nome varchar(100),
elemento varchar(100)
 );
 
 create table tb_personagem(
 id bigint auto_increment primary key,
 nome varchar(100),
 classe_id bigint,
 ataque int not null,
 defesa int not null, 
 FOREIGN KEY (classe_id) REFERENCES tb_classe (id) 
 );

insert into tb_classe (nome, elemento) values ("pinguis", "gelo");
insert into tb_classe (nome, elemento) values ("passaro", "semente");
insert into tb_classe (nome, elemento) values ("baleia", "jato");
insert into tb_classe (nome, elemento) values ("gato", "areia");
insert into tb_classe (nome, elemento) values ("leão", "garras");

insert into tb_personagem (nome, classe_id, ataque, defesa) values ("joana", 1, 2500, 1300);
insert into tb_personagem (nome, classe_id, ataque, defesa) values ("pedro", 4, 2900, 1000);
insert into tb_personagem (nome, classe_id, ataque, defesa) values ("manuel", 5, 2000, 2900);
insert into tb_personagem (nome, classe_id, ataque, defesa) values ("joão", 2, 980, 4900);
insert into tb_personagem (nome, classe_id, ataque, defesa) values ("ocean", 3, 2300, 1999);
insert into tb_personagem (nome, classe_id, ataque, defesa) values ("iveth", 5, 3500, 1900);
insert into tb_personagem (nome, classe_id, ataque, defesa) values ("tereza", 1, 2100, 3300);
insert into tb_personagem (nome, classe_id, ataque, defesa) values ("ilda", 2, 1200, 3500);

select nome, ataque from tb_personagem where ataque > 2000 order by ataque DESC;
select nome, defesa from tb_personagem where defesa >= 1000 and defesa >= 2000 order by defesa DESC;

select * from tb_personagem where nome like "c%";

select tb_personagem.id, tb_personagem.nome, tb_personagem.ataque, tb_personagem.defesa, tb_classe.nome as classe, tb_classe.elemento
from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id;

select tb_personagem.id, tb_personagem.nome, tb_personagem.ataque, tb_personagem.defesa, tb_classe.nome as classe, tb_classe.elemento
from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id where tb_personagem.classe_id = 1;