create database db_acougue;

use db_acougue;

create table tb_categoria (id bigint not null auto_increment, tipo varchar(255), distribuidora varchar(255), primary key (id));
create table tb_produto (id bigint not null auto_increment, nome varchar(255), preco decimal(8,2), dataV date, id_categoria bigint, primary key (id), foreign key (id_categoria) references tb_categoria (id));

insert into tb_categoria (tipo, distribuidora) values ("Carne", "RB Carnes");
insert into tb_categoria (tipo, distribuidora) values ("Ave", "Granja");
insert into tb_categoria (tipo, distribuidora) values ("Peixe", "Peixeiraria");

select * from tb_categoria;

insert into tb_produto (nome, preco, dataV, id_categoria) values ("Picanha", 70.99, "2023-05-12", 1);
insert into tb_produto (nome, preco, dataV, id_categoria) values ("Frango", 17.99, "2023-10-10", 2);
insert into tb_produto (nome, preco, dataV, id_categoria) values ("Salmão", 90.99, "2023-09-29", 3);

select * from tb_produto;

select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.id_categoria where preco > 50;

select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.id_categoria where preco between 3 and 60;

select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.id_categoria where tipo like "%c%";

select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.id_categoria;

select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.id_categoria where tipo = "Carne";
