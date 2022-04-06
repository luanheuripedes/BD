use universidade_u;

delimiter $$
create procedure proc_variaves_escopo_local2()
begin
	declare total_professores int;
    
    -- set total_professores = (select count(*) from professor);
		select count(*) into total_professores from professor;
    select total_professores as teste;
end
$$
delimiter ;

show procedure status where Db = "universidade_u";

call proc_variaves_escopo_local2();