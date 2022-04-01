drop procedure proc_mediaPonderada;
DELIMITER $$
CREATE PROCEDURE proc_mediaPonderada(in nome varchar(100),
										in p1 float(3,1),
                                        in p2 float(3,1),
                                        in p3 float(3,1),
                                        in p4 float(3,1)
)
comment "Efetua o calculo de media ponderada: (p1*2)+(p2*2)+(p3*3)+(p4*3) / 10"
BEGIN
	/*Nome do aluno e media ponderada*/
    select
		nome,
        round( (((p1*2)+(p2*2)+(p3*3)+(p4*3)) / 10),1) as "media_Ponderada";
END $$
DELIMITER ;

show procedure status where Db = "universidade_u";

call proc_mediaPonderada("Luan",8,7,5,9);