delimiter $$
create procedure proc_ifelse()
comment "Exemplo de uso dos condicionais ifElse"
begin
	declare idade int default 25;
    
    IF idade >= 0 and idade <= 15  THEN
	/*instrução que deve ser executada se a condição for verdadeira*/
	ELSEIF idade > 15 and idade <= 29  THEN
	/*instrução que deve ser executada se a condição 2 for verdadeira*/
	ELSEIF idade > 29 and idade <= 59  THEN
		select "adulto";
	ELSE
	/*instrução que deve ser executada se a condição for falsa*/
	END IF;
end
$$
delimiter ;

call proc_ifelse();

drop procedure proc_ifelse;