use atividade1;
create table escola(
id bigint auto_increment,
Nome_aluno varchar(60) not null,
Turma varchar(60)not null,
Nota varchar(60) not null,
Genero varchar(60) not null,
Disciplina varchar(60) not null,
primary key(id)
);


insert into escola(Nome_aluno, Turma, Nota, Genero, Disciplina) values (" Ana","1 ", "9", "feminino", "matematica");
insert into escola(Nome_aluno, Turma, Nota, Genero, Disciplina) values (" patricia","4 ", "7", "feminino", "matematica");
insert into escola(Nome_aluno, Turma, Nota, Genero, Disciplina) values (" Maria","3 ", "6", "feminino", "matematica");
insert into escola(Nome_aluno, Turma, Nota, Genero, Disciplina) values (" joao","2 ", "5", "maculino", "matematica");
insert into escola(Nome_aluno, Turma, Nota, Genero, Disciplina) values (" maria","2 ", "4", "feminino", "matematica");
insert into escola(Nome_aluno, Turma, Nota, Genero, Disciplina) values (" Antonio","4 ", "8", "masculino", "matematica");
insert into escola(Nome_aluno, Turma, Nota, Genero, Disciplina) values ("Pedro","3 ", "6.3", "masculino", "matematica");
insert into escola(Nome_aluno, Turma, Nota, Genero, Disciplina) values (" Manuel","1 ", "10", "feminino", "matematica");


select * from escola where Nota > 7;

select * from escola where Nota < 7;

update escola set Nome_aluno = "Domingos", Turma= 2 , Genero= "Feminino "   where id= 3;