create database db_pizzaria;

use db_pizzaria;

create table tb_categoria (id bigint auto_increment, nome varchar(100), categoria varchar(100), valor decimal(8,2), primary key (id));
create table tb_pizza (id bigint auto_increment, nome_cliente varchar(100), nome_motoboy varchar(100), endereço varchar(255), telefone varchar(11), id_categoria bigint, primary key (id), foreign key (id_categoria) references tb_categoria(id));

drop table tb_categoria;

insert into tb_categoria (nome, categoria, valor) values ("Calabresa", "Salgada", 29.99);
insert into tb_categoria (nome, categoria, valor) values ("Mussarela", "Salgada", 29.99);
insert into tb_categoria (nome, categoria, valor) values ("Bacon", "Salgada", 32.99);
insert into tb_categoria (nome, categoria, valor) values ("Camarão", "Salgada", 50.99);
insert into tb_categoria (nome, categoria, valor) values ("Do Chefe", "Salgada", "27.99");
insert into tb_categoria (nome, categoria, valor) values ("Brigadeiro", "Doce", "30.99");


select * from tb_categoria;

insert into tb_pizza (nome_cliente, nome_motoboy, endereço, telefone, id_categoria) values ("Roberto", "Paulo", "av.blabla", "11999998888", 1);
insert into tb_pizza (nome_cliente, nome_motoboy, endereço, telefone, id_categoria) values ("Fernando", "Robson", "av.blabla", "11999997777", 2);
insert into tb_pizza (nome_cliente, nome_motoboy, endereço, telefone, id_categoria) values ("Claudia", "Paulo", "av.blabla", "11999998888", 4);
insert into tb_pizza (nome_cliente, nome_motoboy, endereço, telefone, id_categoria) values ("Fernanda", "Paulo", "av.blabla", "11999996666", 6);

select * from tb_pizza;

select * from tb_categoria where valor > 45;
select * from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.id_categoria where valor > 45;

select * from tb_categoria where valor between 30 and 60;
select * from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.id_categoria where valor between 30 and 60;

select * from tb_categoria where nome like "%c%";
select * from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.id_categoria where nome like "%c%";

select * from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.id_categoria where tb_categoria.categoria = "doce";



