
delimiter $$
CREATE PROCEDURE proc_case2()
comment "Exemplo de uso de case"
begin
	declare opcao int default 1;
    
    /*sintaxe alternativa*/
    case 
		when opcao > 1 then select "Instrução 1 foi executada";
		when opcao < 2  then select "Instrucao 2 foi executada";
        when opcao  <= 3 then select "Instrucao 3 foi executada";
        when opcao <= 4 then select "Instrucao 4 foi executada";
        when opcao != 5 then select "Instrucao 5 foi executada";
        else 
			select "Nenhuma foi acertada";
    end case;
end;
$$
delimiter ;

call proc_case();