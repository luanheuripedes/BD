use universidade_u;

/*Tipagem forte / fraca */

/*Tipagem fraca*/
set @nome = "Luan";
set @nome = 10;
select @nome;

delimiter $$
create procedure proc_variaves_escopo_local()
begin

	/*tipagem forte*/
	declare x int default 10;
    declare papagaio float(8,2);
    
    /*logica procedure*/
    set papagaio = 20.45;
    set x = "Luan";
    
    select papagaio as variavel_escopo_local;
    
end
$$
delimiter ;

show procedure status where Db = "universidade_u";
drop procedure universidade_u.proc_variaves_escopo_local;

call proc_variaves_escopo_local();