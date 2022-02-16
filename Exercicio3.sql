create database db_farmacia;

use db_farmacia;

create table tb_categoria (id bigint not null auto_increment, tarja varchar(255), tipo varchar(255), primary key (id));
create table tb_produto (id bigint not null auto_increment, nome varchar(255), preco decimal(8,2), dataV date, id_categoria bigint, primary key (id), foreign key (id_categoria) references tb_categoria (id));

insert into tb_categoria (tarja, tipo) values ("Amarela", "Genérico");
insert into tb_categoria (tarja, tipo) values ("Preta", "Controlado");
insert into tb_categoria (tarja, tipo) values ("Vermelha", "Manipulado");

select * from tb_categoria;

insert into tb_produto (nome, preco, dataV, id_categoria) values ("Buscopam", 12.99, 12/05/2022 , 1);
insert into tb_produto (nome, preco, dataV, id_categoria) values ("Rivotril", 50.99, 13/01/2025 , 2);
insert into tb_produto (nome, preco, dataV, id_categoria) values ("Hemax", 62.99, 19/10/2027 , 3);

select * from tb_produto;

select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.id_categoria where tb_produto.preco > 50;

select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.id_categoria where tb_produto.preco between 3 and 60;

select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.id_categoria where tb_produto.nome like "%b%";

select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.id_categoria;
select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.id_categoria where tb_categoria.tipo = "Controlado";
