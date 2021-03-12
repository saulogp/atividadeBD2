use Faculdade;

--SELECTS
--a
select a.Nome as Alunos, m.Prova1 as 'Nota 1', m.Prova2 as 'Nota 2', m.Sub as 'Substitutiva', m.Media
from Disciplina d
Join Matricula m on d.Codigo = m.Cod_disciplina
join Aluno a on a.RA = m.RA
where d.Sigla = 'C4' and m.Ano = '2020';

--b
select a.Nome as Alunos, m.Prova1 as 'Nota 1', m.Prova2 as 'Nota 2', m.Sub as 'Substitutiva', m.Media, d.Nome as 'Nome da Disciplina', d.Sigla, m.Falta as 'Faltas'
from Aluno a
join Matricula m on m.RA = a.RA
join Disciplina d on d.Codigo = m.Cod_disciplina
where a.RA = '45678' and m.Semestre = '2' and m.Ano = '2019'
--b 
select a.Nome as Alunos, m.Prova1 as 'Nota 1', m.Prova2 as 'Nota 2', m.Sub as 'Substitutiva', m.Media, d.Nome as 'Nome da Disciplina', d.Sigla, m.Falta as 'Faltas'
from Aluno a
join Matricula m on m.RA = a.RA
join Disciplina d on d.Codigo = m.Cod_disciplina
join Curso c on c.Codigo = d.Cod_curso
where a.RA = '12345' and m.Semestre = '1' and m.Ano = '2019' and c.Codigo = a.Cod_curso

--c
select a.Nome as 'Alunos', m.Media, d.Nome as 'Disciplinas', m.Falta
from Curso c
join Aluno a on a.Cod_curso = c.Codigo
join Matricula m on m.RA = a.RA
join Disciplina d on d.Codigo = m.Cod_disciplina
where c.Sigla = 'EC' and m.Ano = '2020' and m.Status_aluno = 'Reprovado'

--d
--atraves do cpf professor, mostrar as disciplinas que ele ministra e o curso,
--e quantos alunos foram reprovados por ele

-------------------------------------
select distinct p.Nome,c.Nome, count(dp.Cod_disciplina) as 'Total de disciplinas'
from Professor p
join Curso_Professor cp on cp.Cod_Professor = p.Codigo
join Disciplina_Professor dp on dp.Cod_Professor = p.Codigo
join Curso c on c.Codigo = cp.Cod_Curso
where p.CPF = '43387157070'
group by p.nome, c.Nome
order by p.Nome, c.Nome
-------------------------------------
select * 
from Disciplina d
join Curso c on c.Codigo = d.Cod_Curso
