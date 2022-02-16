create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe (id int auto_increment, nome varchar(255), habilidade varchar(255), arma varchar(255), primary key (id)) ;

insert into tb_classe (nome, habilidade, arma) values ("Guerreiro", "Excalibur", "Espada");
insert into tb_classe (nome, habilidade, arma) values ("Druida", "Gelo", "Livro");
insert into tb_classe (nome, habilidade, arma) values ("Feiticeiro", "Bola de Fogo", "Cajado");

select * from tb_classe;

create table tb_personagem (id bigint auto_increment, nome varchar(255), nivel int, ataque int, defesa int, classe_id int, primary key (id), foreign key (classe_id) references tb_classe(id)) ;

insert into tb_personagem (nome, nivel, ataque, defesa, classe_id) values ("Mamoa", 150, 500, 500, 1);
insert into tb_personagem (nome, nivel, ataque, defesa, classe_id) values ("Sheldon", 200, 600, 300, 3);
insert into tb_personagem (nome, nivel, ataque, defesa, classe_id) values ("Gambet", 80, 300, 200, 2);
insert into tb_personagem (nome, nivel, ataque, defesa, classe_id) values ("Robert", 300, 1000, 700, 1);
insert into tb_personagem (nome, nivel, ataque, defesa, classe_id) values ("Jasmine", 500, 1600, 900, 3);
insert into tb_personagem (nome, nivel, ataque, defesa, classe_id) values ("Jackeline", 900, 2500, 1500, 1);
insert into tb_personagem (nome, nivel, ataque, defesa, classe_id) values ("Cobalt", 100, 300, 200, 2);

select * from tb_personagem;

select * from tb_personagem where ataque > 2000;

select * from tb_personagem where ataque between 1000 and 2000;

select * from tb_personagem where defesa between 1000 and 2000;

select * from tb_personagem where nome like '%c%';

select * from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id;

select * from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id where tb_classe.id = 2;