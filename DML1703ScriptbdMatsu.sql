/* Essa query possuirá todos os  DML usados até 17/03 */

insert into tbPessoa values(
default
,'matsu'
,'1999-11-20'
,'43542044873'
,'f'
,'1.62'
,'68.3'); /*DML*/

insert into tbPessoa values(
default
,'kito'
,'1999-07-22'
,'01254836971'
,'m'
,'1.76'
,'89.9'
,default
); /*DML*/

insert into tbExercicios values 
(default, 'html', 'Curso de Html5 para iniciantes', '40', '37' , '2018')
,(default, 'jarva', 'Curso de java para iniciantes', '80', '67' , '2019')
,(default, 'php', 'Curso de Html5 para iniciantes', '20', '13' , '2015')
,(default, 'mysql', 'Curso de Html5 para iniciantes', '42', '33' , '2016')
,(default, 'algoritmos', 'Curso de Html5 para iniciantes', '84', '80' , '2024')
,(default, 'photoshop', 'Curso de Html5 para iniciantes', '50', '42' , '2034')
,(default, 'word', 'Curso de Html5 para iniciantes', '40', '37' , '2025')
,(default, 'sapateado', 'Curso de dança para iniciantes em plano alto', '50', '46' , '2018')
,(default, 'cozinha arabe', 'Curso de cozinha avançada para iniciantes', '20', '17' , '2016')
,(default, 'c#', 'Curso de c# para iniciantes', '80', '40' , '2014'
); /*DML*/

UPDATE `bdmatsu`.`tbExercicios` SET `descricaoExercicio` = 'Curso de php para iniciantes' WHERE (`idExercicios` = '3');
UPDATE `bdmatsu`.`tbExercicios` SET `descricaoExercicio` = 'Curso de mysql para iniciantes' WHERE (`idExercicios` = '4');
UPDATE `bdmatsu`.`tbExercicios` SET `descricaoExercicio` = 'Curso de algoritmos para iniciantes' WHERE (`idExercicios` = '5');
UPDATE `bdmatsu`.`tbExercicios` SET `descricaoExercicio` = 'Curso de photoshop para iniciantes' WHERE (`idExercicios` = '6');
UPDATE tbExercicios set descricaoExercicio = 'Curso de Pacote office com foco em Word 360', nomeExercicio = 'Pacote office' , cargaexercicio = '80' where idExercicios = '7'; /*dml*/

delete from tbexercicios
where idExercicios = '9'; /*DML*/

truncate table tbExercicios; /*DML*/ /*Parece inofencivo porém apagara sua grid inteira*/