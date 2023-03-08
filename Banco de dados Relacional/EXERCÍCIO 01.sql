CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classes (
id bigint auto_increment,
nome varchar (255) not null,
tipo varchar (255) not null,
primary key (id)
 );
 
 CREATE TABLE tb_personagens (
 id bigint auto_increment, 
 nome varchar (255) not null,
 ataque int not null,
 defesa int not null,
 forca int not null,
 PRIMARY KEY (id)
 );
  
ALTER TABLE tb_personagens ADD tb_classes_id bigint;
ALTER TABLE tb_personagens ADD CONSTRAINT fk_personagens_classe
FOREIGN KEY (tb_classes_id) REFERENCES tb_classes(id);

INSERT INTO tb_classes( nome, tipo)
values ("Reyna", "Duelista");
INSERT INTO tb_classes( nome, tipo)
values ("Sage","Sentinela");
INSERT INTO tb_classes( nome, tipo)
values ("Sova", "Iniciador");
INSERT INTO tb_classes( nome, tipo)
values ("Omen","Controlador");

INSERT INTO tb_personagens( nome, ataque,defesa,forca,tb_classes_id)
values ("Thiago",3000,1000,5000,1);
INSERT INTO tb_personagens( nome, ataque,defesa,forca,tb_classes_id)
values ("Joas",2000,4000,2000,2);
INSERT INTO tb_personagens( nome, ataque,defesa,forca,tb_classes_id)
values ("Beatriz", 1000,3000,2000,3);
INSERT INTO tb_personagens( nome, ataque,defesa,forca,tb_classes_id)
values ("Thaina",1000,4000,2000,4);
INSERT INTO tb_personagens( nome, ataque,defesa,forca,tb_classes_id)
values ("Yuri",4000,2000,3000,1);
INSERT INTO tb_personagens( nome, ataque,defesa,forca,tb_classes_id)
values ("Jainna",1000,4000,2000,4);
INSERT INTO tb_personagens( nome, ataque,defesa,forca,tb_classes_id)
values ("Luna",4000,2000,3000,1);
INSERT INTO tb_personagens( nome, ataque,defesa,forca,tb_classes_id)
values ("Masabe",2000,4000,2000,2);

SELECT * FROM tb_personagens WHERE ataque > 2000;
SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;
SELECT * FROM tb_personagens WHERE nome LIKE "%r%"; 

SELECT*FROM tb_personagens 
INNER JOIN tb_classes ON tb_classes.id = tb_personagens.tb_classes_id;

SELECT * FROM tb_personagens
INNER JOIN tb_classes ON tb_classes.id = tb_personagens.tb_classes_id WHERE tb_classes_id = 1;




