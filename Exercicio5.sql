create database db_construcao;

use db_construcao;

create table tb_categoria (id bigint not null auto_increment, tipo varchar(255), distribuidora varchar(255), primary key (id));
create table tb_produto (id bigint not null auto_increment, nome varchar(255), preco decimal(8,2), quantidade int, id_categoria bigint, primary key (id), foreign key (id_categoria) references tb_categoria (id));

insert into tb_categoria (tipo, distribuidora) values ("Hidraulica", "Mangueiras/rb");
insert into tb_categoria (tipo, distribuidora) values ("Carpintagem", "Madereira/sp");
insert into tb_categoria (tipo, distribuidora) values ("Industria", "Siderurgica/oob");

select * from tb_categoria;

insert into tb_produto (nome, preco, quantidade, id_categoria) values ("Mangueira", 30.99, 100, 1);
insert into tb_produto (nome, preco, quantidade, id_categoria) values ("Madeira 100x100", 150.00, 25, 2);
insert into tb_produto (nome, preco, quantidade, id_categoria) values ("Parafuso", 00.50, 3000, 3);

select * from tb_produto;

select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.id_categoria where preco > 50;

select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.id_categoria where preco between 3 and 60;

select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.id_categoria where tipo like "%c%";

select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.id_categoria;

select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.id_categoria where tipo = "Hidraulica";