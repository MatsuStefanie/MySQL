use cristal_gym;

/*Para excluir tudo relacionado à cliente*/
delete from email
where email.idCliente = (select cliente.id from cliente where cliente.cpf = '43542044873');
delete from biotipo
where biotipo.idCliente = (select cliente.id from cliente where cliente.cpf = '43542044873');
delete from cliente
where cpf='43542044873';
