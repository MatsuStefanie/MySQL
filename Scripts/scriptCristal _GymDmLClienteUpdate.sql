use cristal_gym;

update cliente
set cliente.nome ='erro gerado',
	cliente.cpf ='09823476192',
    cliente.nascimento ='1962-02-22'
where cliente.cpf = '09823476192';

update biotipo
set biotipo.altura='2.00',
	biotipo.peso='80.20'
where biotipo.idCliente=(select id from cliente where cliente.cpf like '09823476192');

update email
set email.email='erreinaodeu@hotmail.com',
	email.principal= true
where email.id = 8;

select * from cliente;