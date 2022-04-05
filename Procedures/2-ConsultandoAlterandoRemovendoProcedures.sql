/*Listar procedures do BD*/
SHOW PROCEDURE STATUS;

/*Listar procedures de um BD especifico*/
SHOW PROCEDURE STATUS where Db = "universidade_u";

/*Mostrar conteudo da procedure*/
show create procedure universidade_u.proc_oi;

/*Alterar procedure -> remover a procedure e criar novamente*/
drop procedure universidade_u.proc_oi;

DELIMITER $$
CREATE PROCEDURE proc_oi()
 begin
 	select "Oi, eu fui modificado!" as mensagem;
end $$
DELIMITER ;

CALL proc_oi();


