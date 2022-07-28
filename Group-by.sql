/*Questão 1:*/
/*Utilizando uma query, obtenha a quantidade de experiências (experiences) atuais, ou seja, com “endDate” diferente de NULL.*/
SELECT COUNT ("endDate") as "currentExperiences" FROM experiences;
/*Questão 2:*/
/* Utilizando uma *query*, obtenha a quantidade de graduações (`educations`) por usuário, incluindo o seu id.*/
SELECT "userId" AS id, COUNT ("userId") AS educations FROM educations GROUP BY "userId";
/*Questão 3:*/
/*Utilizando uma query, obtenha a quantidade de depoimentos(testimonials) que o usuário com id 435 efetuou, incluindo o seu nome. */
SELECT usr.name AS writer ,COUNT (te."recipientId") as "testimonialCount" FROM testimonials te  JOIN users usr ON te."writerId"= usr.id WHERE usr.id=435 GROUP BY writer;
/*Questão 4:*/
/*Utilizando uma query, obtenha o maior salário das vagas (jobs) ativas (active = true) e o nome das posições (roles) dessas vagas ordenadas de forma ascendente*/
SELECT MAX(salary) as "maximumSalary", ro.name as role  FROM jobs jo  JOIN roles ro ON jo."roleId"= ro.Id WHERE jo.active = true GROUP BY ro.id ORDER BY "maximumSalary" ASC;
