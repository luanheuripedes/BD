
/*left join*/
select * from disciplina as d left join professor as p ON (d.fk_idprofessor = p.idprofessor);
select * from disciplina as d right join professor as p ON (d.fk_idprofessor = p.idprofessor);

/*FULL OUTER JOIN*/

select * from disciplina as d left join professor as p ON (d.fk_idprofessor = p.idprofessor)
union 
select * from disciplina as d right join professor as p ON (d.fk_idprofessor = p.idprofessor);
