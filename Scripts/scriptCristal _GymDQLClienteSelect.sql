use cristal_gym;

select cliente.nome, cliente.cpf, cliente.nascimento, biotipo.altura, biotipo.peso, email.email 
from cliente inner join biotipo on cliente.id = biotipo.idCliente
inner join email on cliente.id = email.idCliente
where cliente.cpf like '43542044873' 
order by cliente.cpf, email.principal desc;

select *
from cliente inner join biotipo on cliente.id = biotipo.idCliente
inner join email on cliente.id = email.idCliente
where cliente.cpf like '41866356844' 
order by cliente.cpf, email.principal desc;