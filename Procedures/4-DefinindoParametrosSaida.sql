use universidade_u;

/*Total de alunos e total de professores*/
DELIMITER $$
CREATE PROCEDURE proc_resumo(out total_professores int, out total_alunos int)
COMMENT "Resumo do total de alunos e professores"
BEGIN
		/*Total de professores*/
        select count(*) into total_professores from professor;
        
        /*Total de alunos*/
        select count(*) into total_alunos from aluno;
END
$$
DELIMITER ;

show procedure status where Db = 'universidade_u';

call proc_resumo(@x, @y);

select @x as totalProfessor, @y as totalAluno;