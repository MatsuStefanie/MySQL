/* Essa query possuirá todos os  DDL usados até 17/03 */

create database bdMatsu default character set utf8 default collate utf8_general_ci; /*DDL*/

create table tbPessoa(
idPessoa int auto_increment not null
,nomePessoa varchar(30) not null
,dtNascPessoa date
,cpfPessoa char(11) not null
,sexo enum('F' , 'M')
,altura float(3,2)
,peso float(5,2)
,primary key(idPessoa)
) default charset = utf8; /*DDL*/

alter table tbPessoa 
add column emailPessoa varchar(50) not null default 'não informado'
,modify column nomePessoa varchar(45) not null
,change column sexo sexoPessoa enum('F' , 'M')
,change column altura alturapessoa float(3,2)
,change column peso  pesoPessoa float(5,2)
; /*DDL*/

alter table tbPessoa
rename to TbPessoa; /*DDL*/

create table  if not exists tbExercicios(
idExercicios int auto_increment not null
,nomeExercicio varchar(30) not null unique
,descricaoExercicio text
,cargaexercicio int unsigned
,totaulasNecessarias int unsigned
,anoInseridoEmCatalogo year default '2020'
,primary key (idExercicios)
) default charset = utf8; /*DDL*/