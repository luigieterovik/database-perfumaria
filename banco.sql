create database perfumaria;

use perfumaria;

create table usuario (
	id int not null primary key auto_increment,
    login varchar(45) not null,
	senha char(32) not null,
    email varchar(60) not null,
    telefone varchar(12) not null,
    funcionario char(1) not null default 'N'
);

create table venda (
	id int not null auto_increment primary key,
    usuario_id int not null,
    nome_cliente varchar(45) not null,
    data_venda date not null,
    valor_total decimal(8,2) not null,
    tipo_pagamento varchar(15) not null,
    valor_desconto decimal(6,2) not null,
    CONSTRAINT fk_usuario_id FOREIGN KEY (usuario_id) REFERENCES usuario (id)
);

create table produto (
	id int not null auto_increment primary key,
    nome varchar(40),
    marca varchar(40),
    preco decimal(6,2)
);

create table venda_produto (
	venda_id int not null,
    produto_id int not null,
    quantidade int not null,
    preco_unitario decimal(6,2),
    primary key (venda_id, produto_id),
    constraint fk_venda_id foreign key (venda_id) references venda (id),
    constraint fk_produto_id foreign key (produto_id) references produto (id)
);