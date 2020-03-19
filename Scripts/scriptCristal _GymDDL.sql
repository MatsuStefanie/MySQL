Create database cristal_gym
default character set utf8
default collate utf8_general_ci;
	use cristal_gym;

create table cliente(
	id int auto_increment not null,
	nome varchar(40),
	cpf int(11),
	nascimento date,
	primary key (id)
);

create table email(
	id int auto_increment not null,
	email varchar(50),
	principal boolean,
	idCliente int not null,
	primary key (id),
    foreign key (idCliente) references cliente(id)
);

create table biotipo(
id int auto_increment not null,
altura float(3,2),
peso float(5,2),
idCliente int not null,
primary key (id),
foreign key (idCliente) references cliente(id)
);

/*DDl de Cristal_gym*/