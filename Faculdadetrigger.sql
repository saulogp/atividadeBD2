use Faculdade;
go
Create trigger Media_Sub1
on Matricula
for update
as
begin
	declare
	@p1 decimal(3,1),
	@p2 decimal(3,1),
	@ra varchar(20),
	@dic smallint,
	@sub decimal(3,1),
	@falta smallint,
	@cargah smallint
	--@media decimal(3,1)

	select @p1 = i.Prova1, @p2 = i.Prova2, @ra = i.RA, @dic = i.Cod_disciplina, @sub = i.Sub, @falta = i.Falta, @cargah = d.Carga_horaria
	from inserted i, Disciplina d
	where d.Codigo  = i.Cod_disciplina

	set @falta = ((@cargah - @falta) * 100) / @cargah;
	
	update Matricula set 
	Matricula.Media = case when (@p1 + @p2)/2 < 6 then
	case when @p2>@p1 then (@sub + @p2)/2  else (@sub + @p1)/2 end
	else (@p1 + @p2)/2 end
	where Cod_disciplina = @dic and RA = @ra;

	update Matricula set
	Matricula.Status_aluno = case when Media < 6 then 'Reprovado' 
	when @falta < 75 then 'Reprovado'
	else 'Aprovado' end
	where  Cod_disciplina = @dic and RA = @ra;
end;