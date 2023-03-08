CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
id bigint auto_increment,
tipo varchar(10) not null,
sabor varchar(10) not null,
PRIMARY KEY(id)
);

CREATE TABLE tb_pizzas(
id bigint auto_increment,
quantidade int not null,
tamanho int not null,
valor int not null, 
 peso int not null,
 PRIMARY KEY (id)
);

ALTER TABLE tb_pizzas ADD categorias_id bigint;
ALTER TABLE tb_pizzas ADD CONSTRAINT fk_pizzas_categorias
FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id);

INSERT INTO tb_categorias (tipo, sabor) values ("Salgado","Calabresa");
INSERT INTO tb_categorias (tipo, sabor) values ("Doce","Banana");
INSERT INTO tb_categorias (tipo, sabor) values ("Salgado","Portuguesa");
INSERT INTO tb_categorias (tipo, sabor) values ("Vegetariana","Cogumelo");
INSERT INTO tb_categorias (tipo, sabor) values ("Doce","Chocolate");

INSERT INTO tb_pizzas (quantidade,tamanho,valor,peso);
values ( 5, "grande", 50, 1);


ALTER TABLE tb_pizzas CHANGE tamanho tam VARCHAR(10);

