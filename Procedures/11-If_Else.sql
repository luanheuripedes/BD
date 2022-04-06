delimiter $$
create procedure proc_ifelse()
comment "Exemplo de uso dos condicionais ifElse"
begin
	declare idade int default 25;
    
    set idade = (select
		timestampdiff(year, data_nascimento, curdate()) 
	from
		aluno
	where idaluno = 5);
    
    IF idade >= 0 and idade <= 15  THEN
	select "criança";
	ELSEIF idade > 15 and idade <= 29  THEN
	select "jovem";
	ELSEIF idade > 29 and idade <= 59  THEN
		select "adulto";
	ELSE
	select "idoso";
	END IF;
end
$$
delimiter ;

call proc_ifelse();

drop procedure proc_ifelse;