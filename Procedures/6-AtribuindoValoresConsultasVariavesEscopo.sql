use universidade_u;


/*Declarar uma variavel que contenha o cpf de um aluno*/
set @cpf = "555.555.555-55";
select * from aluno;

/*Descobrir o id do aluno*/
set @idaluno = (select idaluno from aluno where cpf=@cpf);

/*Recuperar os registros de telefones dos alunos*/
select @idaluno;
select * from telefone where fk_idaluno = @idaluno;