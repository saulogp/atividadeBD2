--Inserts
use Faculdade;

insert into Professor values('43387157070','Carlos')
insert into Professor values('32831473020','Maria')
insert into Professor values('56415039083','Antonieta')
insert into Professor values('91134417012','Guanabara')
insert into Professor values('29090409092','Alfredo')
--select * from Professor

insert into Curso values ('Análise e Desenvolvimento de Sistemas', 'ADS')
insert into Curso values ('Agronomia', 'AGRO')
insert into Curso values ('Engenharia Civil', 'EC')
insert into Curso values ('Jogos Digitais', 'JD')
insert into Curso values ('Matemática', 'MAT')
insert into Curso values ('Gastronomia', 'GAS')
insert into Curso values ('Psicologia', 'PSI')
--select * from Curso

insert into Disciplina (Nome, Sigla, Cod_curso) values ('Banco de Dados I', 'BD1', 1)
insert into Disciplina (Nome, Sigla, Cod_curso) values ('Banco de Dados II', 'BD2', 1)
insert into Disciplina (Nome, Sigla, Cod_curso) values ('Lógica de Programação', 'LP', 1)
insert into Disciplina (Nome, Sigla, Cod_curso) values ('Estrutura de Dados', 'ED', 1)

insert into Disciplina (Nome, Sigla, Cod_curso) values ('Plantar Árvore I', 'PA1', 2)
insert into Disciplina (Nome, Sigla, Cod_curso) values ('Plantar Árvore II', 'PA2', 2)
insert into Disciplina (Nome, Sigla, Cod_curso) values ('Administração de Fazenda', 'ADMF', 2)

insert into Disciplina (Nome, Sigla, Cod_curso) values ('Cálculo I', 'C1', 3)
insert into Disciplina (Nome, Sigla, Cod_curso) values ('Cálculo II', 'C2', 3)
insert into Disciplina (Nome, Sigla, Cod_curso) values ('Cálculo III', 'C3', 3)
insert into Disciplina (Nome, Sigla, Cod_curso) values ('Cálculo IV', 'C4', 3)

insert into Disciplina (Nome, Sigla, Cod_curso) values ('Banco de Dados I', 'BD1', 4)
insert into Disciplina (Nome, Sigla, Cod_curso) values ('Banco de Dados II', 'BD2', 4)
insert into Disciplina (Nome, Sigla, Cod_curso) values ('Lógica de Programação', 'LP', 4)

insert into Disciplina (Nome, Sigla, Cod_curso) values ('Cálculo I', 'C1', 5)
insert into Disciplina (Nome, Sigla, Cod_curso) values ('Cálculo II', 'C2', 5)
insert into Disciplina (Nome, Sigla, Cod_curso) values ('Cálculo III', 'C3', 5)
insert into Disciplina (Nome, Sigla, Cod_curso) values ('Cálculo IV', 'C4', 5)

insert into Disciplina (Nome, Sigla, Cod_curso) values ('Fazer Arroz', 'FA', 6)
insert into Disciplina (Nome, Sigla, Cod_curso) values ('Fazer Feijão', 'FF', 6)
insert into Disciplina (Nome, Sigla, Cod_curso) values ('Fritar Ovo', 'FO', 6)

insert into Disciplina values ('Anatomia', 'ANA', 7, 96)
insert into Disciplina (Nome, Sigla, Cod_curso) values ('Cabeça Dodói I', 'CD1', 7)
insert into Disciplina (Nome, Sigla, Cod_curso) values ('Cabeça Dodói II', 'CD2', 7)

--select * from Disciplina order by Cod_curso

insert into Aluno (RA, Nome, CPF, Cod_curso) values ('12345','Saulo','29090409092', 1)
insert into Aluno (RA, Nome, CPF, Cod_curso) values ('23456','Bruno','05948112012', 6)
insert into Aluno (RA, Nome, CPF, Cod_curso) values ('34567','Jacqueline','17267657095', 7)
insert into Aluno (RA, Nome, CPF, Cod_curso) values ('45678','Leonardo','64157867092', 3)
insert into Aluno (RA, Nome, CPF, Cod_curso) values ('56789','Gabriel','10862230047', 5)
insert into Aluno (RA, Nome, CPF, Cod_curso) values ('01234','Maiara','78433607006', 2)
insert into Aluno (RA, Nome, CPF, Cod_curso) values ('78900','Thalita','78609080005',3)
insert into Aluno (RA, Nome, CPF, Cod_curso) values ('78901','Godofredo','70759600082', 4)

--select * from Aluno
--select * from Disciplina order by Codigo
--select * from Professor

insert into Disciplina_Professor values (1, 1)
insert into Disciplina_Professor values (22, 1)
insert into Disciplina_Professor values (10,1)
insert into Disciplina_Professor values (19, 1)

insert into Disciplina_Professor values (2, 2)
insert into Disciplina_Professor values (3, 3)
insert into Disciplina_Professor values (4, 4)
insert into Disciplina_Professor values (5, 5)
insert into Disciplina_Professor values (6, 5)
insert into Disciplina_Professor values (7, 4)
insert into Disciplina_Professor values (8, 3)
insert into Disciplina_Professor values (9, 2)
insert into Disciplina_Professor values (11, 2)
insert into Disciplina_Professor values (12, 3)
insert into Disciplina_Professor values (13, 4)
insert into Disciplina_Professor values (14, 5)
insert into Disciplina_Professor values (15, 5)
insert into Disciplina_Professor values (16, 5)
insert into Disciplina_Professor values (17, 4)
insert into Disciplina_Professor values (18, 2)
insert into Disciplina_Professor values (20, 3)
insert into Disciplina_Professor values (21, 2)
insert into Disciplina_Professor values (23, 4)
insert into Disciplina_Professor values (24, 5)
--select * from Disciplina_Professor where Cod_Professor = 2
--select * from Professor where Codigo = 2

--select responsável por buscar os professores que estão atrelados ao curso
/*
select d.Nome as Disciplina, c.Codigo, c.Nome as Curso, p.Codigo, p.Nome as Nome_Professor from Curso c 
join Disciplina d on c.Codigo = d.Cod_curso 
join Disciplina_Professor dp on d.Codigo = dp.Cod_disciplina 
join Professor p on p.Codigo = dp.Cod_professor
where p.Codigo = 5
*/
--select * from Professor

insert into Curso_Professor (Cod_professor, Cod_curso) values (1, 1)
insert into Curso_Professor (Cod_professor, Cod_curso) values (1, 3)
insert into Curso_Professor (Cod_professor, Cod_curso) values (1, 6)
insert into Curso_Professor (Cod_professor, Cod_curso) values (1, 7)

insert into Curso_Professor (Cod_professor, Cod_curso) values (2, 1)
insert into Curso_Professor (Cod_professor, Cod_curso) values (2, 3)
insert into Curso_Professor (Cod_professor, Cod_curso) values (2, 5)
insert into Curso_Professor (Cod_professor, Cod_curso) values (2, 6)

insert into Curso_Professor (Cod_professor, Cod_curso) values (3, 1)
insert into Curso_Professor (Cod_professor, Cod_curso) values (3, 3)
insert into Curso_Professor (Cod_professor, Cod_curso) values (3, 4)
insert into Curso_Professor (Cod_professor, Cod_curso) values (3, 6)

insert into Curso_Professor (Cod_professor, Cod_curso) values (4, 1)
insert into Curso_Professor (Cod_professor, Cod_curso) values (4, 2)
insert into Curso_Professor (Cod_professor, Cod_curso) values (4, 4)
insert into Curso_Professor (Cod_professor, Cod_curso) values (4, 5)
insert into Curso_Professor (Cod_professor, Cod_curso) values (4, 7)

insert into Curso_Professor (Cod_professor, Cod_curso) values (5, 2)
insert into Curso_Professor (Cod_professor, Cod_curso) values (5, 4)
insert into Curso_Professor (Cod_professor, Cod_curso) values (5, 5)
insert into Curso_Professor (Cod_professor, Cod_curso) values (5, 7)
--select * from Curso_Professor

/*
select * from Disciplina
select * from Aluno where RA = '01234'
select * from Curso where Codigo = 2

select * from Disciplina d
join Curso c on c.Codigo = d.Cod_curso
join Aluno a on a.Cod_curso = c.Codigo
where c.Codigo = 1

select d.Codigo,d.Nome as Disciplina  from Disciplina d
join Curso c on c.Codigo = d.Cod_curso
join Aluno a on a.Cod_curso = c.Codigo
where c.Codigo = 1

select d.Codigo,d.Nome as Disciplina  from Disciplina d
join Curso c on c.Codigo = d.Cod_curso
join Aluno a on a.Cod_curso = c.Codigo
where c.Codigo = 2



select * from Aluno where RA = '78901'
select d.Codigo, d.Nome as Disciplina, c.Codigo, c.Nome as Curso from Curso c 
join Disciplina d on c.Codigo = d.Cod_curso 
join Disciplina_Professor dp on d.Codigo = dp.Cod_disciplina 
join Professor p on p.Codigo = dp.Cod_professor
where c.Codigo = 4
*/

/*
insert into Matricula (Cod_disciplina, RA) values(1,'12345')
insert into Matricula (Cod_disciplina, RA) values(2,'12345')
insert into Matricula (Cod_disciplina, RA) values(3,'12345')
insert into Matricula (Cod_disciplina, RA) values(4,'12345')

insert into Matricula (Cod_disciplina, RA) values(19,'23456')
insert into Matricula (Cod_disciplina, RA) values(20,'23456')
insert into Matricula (Cod_disciplina, RA) values(21,'23456')

insert into Matricula (Cod_disciplina, RA) values(5,'01234')
insert into Matricula (Cod_disciplina, RA) values(6,'01234')
insert into Matricula (Cod_disciplina, RA) values(7,'01234')

insert into Matricula (Cod_disciplina, RA) values(22,'34567')
insert into Matricula (Cod_disciplina, RA) values(33,'34567')
insert into Matricula (Cod_disciplina, RA) values(24,'34567')

insert into Matricula (Cod_disciplina, RA) values(8,'45678')
insert into Matricula (Cod_disciplina, RA) values(9,'45678')
insert into Matricula (Cod_disciplina, RA) values(10,'45678')
insert into Matricula (Cod_disciplina, RA) values(11,'45678')

insert into Matricula (Cod_disciplina, RA) values(15,'56789')
insert into Matricula (Cod_disciplina, RA) values(16,'56789')
insert into Matricula (Cod_disciplina, RA) values(17,'56789')
insert into Matricula (Cod_disciplina, RA) values(18,'56789')

insert into Matricula (Cod_disciplina, RA) values(8,'78900')
insert into Matricula (Cod_disciplina, RA) values(9,'78900')
insert into Matricula (Cod_disciplina, RA) values(10,'78900')
insert into Matricula (Cod_disciplina, RA) values(11,'78900')

insert into Matricula (Cod_disciplina, RA) values(12,'78901')
insert into Matricula (Cod_disciplina, RA) values(13,'78901')
insert into Matricula (Cod_disciplina, RA) values(14,'78901')
*/
/*
insert into Boletim (RA, Semestre, Ano) values ('12345', '1', '2020');
insert into Boletim (RA, Semestre, Ano) values ('23456', '1', '2020');
insert into Boletim (RA, Semestre, Ano) values ('34567', '1', '2020');
insert into Boletim (RA, Semestre, Ano) values ('78900', '1', '2020');

update Boletim set Prova1 = where RA = '' and Semestre = '' and Ano;
update Boletim set Prova2 = ;
update Boletim set Sub = ; -- Opcional
update Boletim set Falta = ;
*/
--select * from Matricula
--select * from Disciplina1

--criando as matriculas
insert into Matricula (Cod_disciplina, RA, Semestre, Ano) values(1,'12345', 1, 2019)
insert into Matricula (Cod_disciplina, RA, Semestre, Ano) values(19,'23456', 2, 2020)
insert into Matricula (Cod_disciplina, RA, Semestre, Ano) values(11,'45678', 2, 2020)
insert into Matricula (Cod_disciplina, RA, Semestre, Ano) values(11,'78900', 2, 2020)

--dando notas
---------------------------------------------------
update Matricula set Prova1 = 10
where Cod_disciplina = 1 and RA = 12345;

update Matricula set Prova2 = 10
where Cod_disciplina = 1 and RA = 12345;

update Matricula set Falta = 12
where Cod_disciplina = 1 and RA = 12345;
---------------------------------------------------
update Matricula set Prova1 = 5
where Cod_disciplina = 19 and RA = 23456;

update Matricula set Prova2 = 6
where Cod_disciplina = 19 and RA = 23456;

update Matricula set Sub = 3 --passando sub
where Cod_disciplina = 19 and RA = 23456;

update Matricula set Falta = 4
where Cod_disciplina = 19 and RA = 23456;
---------------------------------------------------
update Matricula set Prova1 = 7
where Cod_disciplina = 11 and RA = 45678;

update Matricula set Prova2 = 9
where Cod_disciplina = 11 and RA = 45678;

update Matricula set Falta = 24
where Cod_disciplina = 11 and RA = 45678;

update Matricula set Prova1 = 7
where Cod_disciplina = 11 and RA = 78900;

update Matricula set Prova2 = 9
where Cod_disciplina = 11 and RA = 78900;

update Matricula set Falta = 24
where Cod_disciplina = 11 and RA = 78900;
---------------------------------------------------
select * from Matricula
select * from Disciplina where Codigo = 1
select * from Disciplina where Codigo = 11
select * from Disciplina where Codigo = 19

select * from Disciplina_Professor where Cod_Disciplina = 19

select * from Curso where Codigo = 3;

update Matricula set Media = 10
where Cod_disciplina = 11 and RA = 45678;

Select * from Aluno where RA = 23456;