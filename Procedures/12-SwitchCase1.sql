
delimiter $$
CREATE PROCEDURE proc_case()
comment "Exemplo de uso de case"
begin
	declare opcao int default 1;
    
    /*sintaxe simples*/
    case opcao
		when 1 then select "Instrução 1 foi executada";
		when 2 then select "Instrucao 2 foi executada";
        when 3 then select "Instrucao 3 foi executada";
        when 4 then select "Instrucao 4 foi executada";
        when 5 then select "Instrucao 5 foi executada";
        else 
			select "Nenhuma foi acertada";
    end case;
end;
$$
delimiter ;

call proc_case();