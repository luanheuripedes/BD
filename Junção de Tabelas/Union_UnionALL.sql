use universidade_u;

/* 
   UNION - DISTINCT - Atua como distinct
   UNION ALL - NÃO FAZ DISTINCT
*/

/* mesmo número de colunas */
SELECT 100, 500
UNION ALL
SELECT 100,300
UNION ALL
SELECT 500,700;

/* mesma ordem */
SELECT 100 as c1, 200 as c2, "abacaxi" as c3
UNION ALL
SELECT 500, "UVA", 700;

/*Union (distinct) x union all */
select "morango" as c1
union
select "uva"
union all
select "morango"
union 
select "abacaxi"
order by c1;

/*Enviar um e-mail para todos os alunos e professores*/
select email, 'aluno' from aluno where sexo ='F'
union /*distinct*/
select email, 'professor' from professor WHERE idprofessor in(2,4,6,8)
order by email;