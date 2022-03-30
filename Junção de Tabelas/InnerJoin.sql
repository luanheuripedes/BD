select
 *
 from disciplina as d left join professor p on (d.fk_idprofessor = p.idprofessor);
 
 
 select * from disciplina as d inner join professor p on (d.fk_idprofessor = p.idprofessor);