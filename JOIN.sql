/*Questão 1:*/
/*Utilizando uma *query*, obtenha todos os usuários (`users`) que vivem na cidade (`cities`) cujo nome seja “**Rio de Janeiro**”.*/

SELECT u.id, u.name, c.name AS city FROM users u
JOIN cities c ON u."cityId" = c.id
WHERE c.name = 'Rio de Janeiro';
/*Questão 2:*/
/*Utilizando umas query, obtenha todos os depoimentos (testimonials) cadastrados, incluindo o nome do remetente e do destinatário.*/
SELECT t.id, u1.name AS writer, u2.name AS recipient, message FROM testimonials t
JOIN users u1 ON t."writerId" = u1.id
JOIN users u2 ON t."recipientId" = u2.id;
/*Questão 3:*/
/*Utilizando uma query, obtenha todos os cursos (courses) que o usuário com id 30 já finalizou, incluindo o nome da escola. O que indica que um usuário terminou um curso é o campo status da tabela educations, que deve estar como "finished".*/
SELECT u.id AS id, u.name AS name, c.name AS course, s.name AS school, e."endDate" as "endDate"
FROM educations e
JOIN users u ON e."userId" = u.id
JOIN courses c ON e."courseId" = c.id
JOIN schools s ON e."schoolId" = s.id
WHERE u.id = 30;
/*Questão 4:*/
/*Utilizando uma query, obtenha as empresas (companies) para as quais o usuário com id 50 trabalha atualmente. Para filtrar quem trabalha atualmente, utilize o campo endDate da tabela experiences. Se ele estiver null (IS NULL), significa que a pessoa ainda não encerrou a experiência dela na empresa, ou seja, está trabalhando lá.*/
SELECT u.id AS id, u.name AS name, r.name AS role, c.name AS company, e."startDate" AS "startDate"
FROM experiences e
JOIN companies c ON e."companyId" = c.id
JOIN roles r ON e."roleId" = r.id
JOIN users u ON e."userId" = u.id
WHERE u.id = 50
AND e."endDate" IS NULL;

