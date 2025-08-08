create database dbos2025;
use dbos2025;

create table tbusuarios(
	iduser int primary key,
    usuario varchar(15) not null,
    fone varchar(15),
    login varchar(15) not null unique,
    senha varchar(15) not null,
    perfil varchar(20) not null
    );
select * from tbusuarios;

insert into tbusuarios(iduser, usuario, fone, login, senha, perfil)
values (1,"Alexandre","5566998765432","alex andre","bananasplitt","ADMIN");

create table tbclientes(
	idcliente int primary key auto_increment,
    nomecli varchar(50) not null,
    endcli varchar(100),
    fonecli varchar(15) not null,
    emailcli varchar(50) unique
    );
    
    insert into tbclientes(nomecli,endcli,fonecli,emailcli)
    values ("Alemão","Rua Avenida, 249","5566977239156","clientenumeroso@gmail.com");

    select * from tbclientes;
    
    create table tbos(
		os int primary key auto_increment,
		data_os timestamp default current_timestamp,
		tipo varchar(15) not null,
		situacao varchar(20) not null,
		equipamento varchar(150) not null,
		defeito varchar(150),
		servico varchar(150),
		tecnico varchar(30),
		valor decimal(10,2),
		idcliente int not null,
		foreign key(idcliente) references tbclientes(idcliente)
    );
    
    select * from tbos;
    
    