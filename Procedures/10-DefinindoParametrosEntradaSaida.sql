/*Escopo de seção*/
/*Escopo de parametros*/
/*escopo local*/

delimiter $$
create procedure proc_exemplo_parametros(in param1 int,  /*Escopo de parametros*/
										 out param2 varchar(50), /*Escopo de parametros*/
									     inout param3 float(3,1)) /*Escopo de parametros*/
begin
	select param1, param2, param3;
    /*
    param1 - será exibido pois é um parametro de entrada.
    param2 - sera exibido null, pois o valor não é passado,
			é passado apenas a sua referencia.
	param 3 - sera exibido 70.5, pois é um parametro de entrada e vai 
		permitir alterar o valor da variável de sessão, pois também é uma referencia.
	*/
end
$$
delimiter ;

set @p1 = 100;
set @p2 = "Parametro 2";
set @p3 = 70.5;

call proc_exemplo_parametros(@p1,@p2,@p3);