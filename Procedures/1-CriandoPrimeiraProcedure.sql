use universidade_u;

delimiter $$
create procedure proc_oi()
begin

	select "Oi, você acabou de executar um procedimento que esta no banco de dados! sempre que precisar voce pode me chamar " as mensagem;

	/*Instruções 1*/
	/*Instruções 1*/
    /*Instruções 1*/
    
    /*Logica do procedimento*/
END
$$
delimiter ;

/*Chamar procedure para que o conteudo seja processado*/
CALL proc_oi();

/*Processos bem definidos que são executadas repetidas vezes*/