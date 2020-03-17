create database bdMatsu
default character set utf8
default collate utf8_general_ci; /*DDL*/

use bdMatsu; /*DCL*/

create table tbPessoa(
idPessoa int auto_increment not null
,nomePessoa varchar(30) not null
,dtNascPessoa date
,cpfPessoa char(11) not null
,sexo enum('F' , 'M')
,altura float(3,2)
,peso float(5,2)
,primary key(idPessoa)
) default charset = utf8; /*DDl*/

show tables; /*DQL*/

insert into tbPessoa values(
default
,'matsu'
,'1999-11-20'
,'43542044873'
,'f'
,'1.62'
,'68.3'
); /*dml*/

select * from tbPessoa; /*dql*/

alter table tbPessoa 
add column emailPessoa varchar(50) not null default 'não informado'
,modify column nomePessoa varchar(45) not null
,change column sexo sexoPessoa enum('F' , 'M')
,change column altura alturapessoa float(3,2)
,change column peso  pesoPessoa float(5,2)
; /*ddl*/

desc tbPessoa; /* dql*/

select * from tbPessoa; /*dql*/

insert into tbPessoa values(
default
,'kito'
,'1999-07-22'
,'01254836971'
,'m'
,'1.76'
,'89.9'
,default
); /*dml*/

select * from tbpessoa; /*dql*/

alter table tbPessoa
rename to TbPessoa; /*ddl*/

create table  if not exists tbExercicios(
idExercicios int auto_increment not null
,nomeExercicio varchar(30) not null unique
,descricaoExercicio text
,cargaexercicio int unsigned
,totaulasNecessarias int unsigned
,anoInseridoEmCatalogo year default '2020'
,primary key (idExercicios)
) default charset = utf8; /*ddl*/

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
);

select*from tbExercicios;

desc tbexercicios; /* dql*/


update tbExercicios 
set descricaoExercicio = 'Curso de Pacote office com foco em Word 360', nomeExercicio = 'Pacote office' , cargaexercicio = '80' 
where idExercicios = '7'; /*dml*/

delete from tbexercicios
where idExercicios = '9'; /*dml*/

truncate table tbExercicios; /*dml*/

drop database bdmatsu;