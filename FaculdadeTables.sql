create database Faculdade;
go
use Faculdade;
go
create table Professor
(
	Codigo smallint identity,
	CPF char(11) not null, --unique
	Nome varchar(50) not null,

	constraint pk_professor primary key(Codigo),
	constraint uq_cpf_professor unique (CPF)
);
go
create table  Curso
(
	Codigo smallint identity,
	Nome varchar(50) not null,
	Sigla varchar(5) not null,
	constraint pk_curso primary key(Codigo),
	constraint uq_nome_curso unique (Nome),
	constraint uq_sigla_curso unique (Sigla)
);
go
create table Disciplina
(
	Codigo smallint identity,
	Nome varchar(50) not null,
	Sigla varchar(5) not null,
	Cod_curso smallint not null,
	Carga_horaria smallint default 48, -- em dias 
	constraint pk_disciplina primary key(Codigo),
	constraint fk_curso_disciplina foreign key(Cod_curso) references Curso(Codigo)
);
go
create table  Aluno
(
	RA varchar(20),
	Nome varchar(50) not null,
	CPF char(11) not null,
	Cod_curso smallint not null,
	constraint pk_aluno primary key(RA),
	constraint fk_curso_aluno foreign key(Cod_curso) references Curso(Codigo)
);
go
create table Disciplina_Professor
(
	Cod_disciplina smallint not null,
	Cod_professor smallint not null,
	Semestre char(1) not null,
	Ano char(4) not null,
	constraint pk_disciplina_professor primary key(Cod_disciplina, Cod_professor, Semestre, Ano),
	constraint fk_disciplina_professor_disciplina foreign key(Cod_disciplina) references Disciplina(Codigo),
	constraint fk_disciplina_professor_professor foreign key(Cod_professor) references Professor(Codigo)
);
go

create table Curso_Professor
 (
	Cod_professor smallint not null,
	Cod_curso smallint not null,
	constraint pk_curso_professor primary key(Cod_curso, Cod_professor),
	constraint fk_curso_professor_professor foreign key(Cod_professor) references Professor(Codigo),
	constraint fk_curso_professor_curso foreign key(Cod_curso) references Curso(Codigo)
 );
go
create table Matricula
 (
	Cod_disciplina smallint not null,
	RA varchar(20) not null,
	Semestre char(1) not null,
	Ano char(4) not null,
	Prova1 decimal(3,1)null,
	Prova2 decimal(3,1)null,
	Sub decimal(3,1) null, 
	Media decimal(3,1)null,
	Falta smallint null,--em dias
	Status_aluno varchar(10) default 'Cursando',
	constraint pk_matricula primary key(Cod_disciplina, RA, Semestre, Ano),
	constraint fk_matricula_disciplina foreign key(Cod_disciplina) references Disciplina(Codigo),
	constraint fk_matricula_aluno foreign key(RA) references Aluno(RA)
 );
go
