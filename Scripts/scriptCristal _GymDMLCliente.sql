insert into cliente values(default,
	'Bruno Pinheiro Vidal',
	41866356844,
	'1999-07-22'
);

insert into email values(default,
	'kitokoioto@gmail.com',
	true,
	(select id from cliente where cpf = '41866356844')
);

insert into email values(default,
	'brunoo_viidal@hotmail.com',
	false,
	(select id from cliente where cpf = '41866356844')
);

insert into biotipo values(default,
	'1.76',
	'92.00',
	(select id from cliente where cpf = '41866356844')
);

/*Cliente Bruno*/


insert into cliente values(default,
	'Stefanie da Silva Souza',
	43542044873,
	'1999-07-22'
);

insert into email values(default,
	'matsustefanie@gmail.com',
	true,
	(select id from cliente where cpf = '43542044873')
);

insert into email values(default,
	'stefaniedasilvasouza.matsu@gmail.com',
	false,
	(select id from cliente where cpf = '43542044873')
);

insert into biotipo values(default,
	'1.62',
	'69.10',
	(select id from cliente where cpf = '43542044873')
);

/*Cliente Stefanie*/


insert into cliente values(default,
	'Maria Jose Lima',
	50263841219,
	'1989-09-12'
);

insert into email values(default,
	'marialimaj@gmail.com',
	true,
	(select id from cliente where cpf = '50263841219')
);

insert into email values(default,
	'mljose@gmail.com',
	false,
	(select id from cliente where cpf = '50263841219')
);

insert into biotipo values(default,
	'1.53',
	'89.51',
	(select id from cliente where cpf = '50263841219')
);

/*Cliente Maria Jose*/


insert into cliente values(default,
	'Erro',
	09823476192,
	'1999-07-22'
);

insert into email values(default,
	'erroparateste@gmail.com',
	true,
	(select id from cliente where cpf = '09823476192')
);

insert into email values(default,
	'testeerrogerado@hotmail.com',
	false,
	(select id from cliente where cpf = '09823476192')
);

insert into biotipo values(default,
	'1.06',
	'32.00',
	(select id from cliente where cpf = '09823476192')
);

/*Cliente 'erro'*/
commit;

select * from cliente;
select * from biotipo;
select * from email;