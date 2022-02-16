create database db_curso;

use db_curso;

create table tb_categoria (id bigint not null auto_increment, tipo varchar(255), duracao varchar(255), preco decimal(8,2), primary key (id));
create table tb_curso (id bigint not null auto_increment, nome_sala varchar(255), quantidade_alunos int, id_categoria bigint, primary key (id), foreign key (id_categoria) references tb_categoria (id));

insert into tb_categoria (tipo, duracao, preco) values ("Java", "3Meses", 50.99);
insert into tb_categoria (tipo, duracao, preco) values ("Python", "2Meses", 45.00);
insert into tb_categoria (tipo, duracao, preco) values ("Iglês", "6Meses", 150.00);

select * from tb_categoria;

insert into tb_curso (nome_sala, quantidade_alunos, id_categoria) values ("Sala 44", 44, 1);
insert into tb_curso (nome_sala, quantidade_alunos, id_categoria) values ("Sala 22", 30, 2);
insert into tb_curso (nome_sala, quantidade_alunos, id_categoria) values ("Sala 10", 50, 3);

select * from tb_curso;

select * from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.id_categoria where preco > 50;

select * from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.id_categoria where preco between 3 and 60;

select * from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.id_categoria where tipo like "%j%";

select * from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.id_categoria;

select * from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.id_categoria where tipo = "Java";