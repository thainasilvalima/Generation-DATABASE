CREATE DATABASE db_empresa;
USE db_empresa;

CREATE TABLE tb_colaboradores(
id bigint auto_increment,
nome varchar(255) not null, endereco varchar(255) not null, cep int, salario double not null,
 profissao varchar (255) not null,
	PRIMARY KEY(id)
   );
   INSERT INTO tb_colaboradores(nome,endereco,cep,salario,profissao)
   values ("Yuri Oliveira", "Rua Generation 60", 26152359, 2.000, "Instrutor");
   INSERT INTO tb_colaboradores(nome,endereco,cep,salario,profissao)
   values ("Luis Guerreiro", "Rua Generation 61", 26152378, 2.250, "Instrutor Senior");
   INSERT INTO tb_colaboradores(nome,endereco,cep,salario,profissao)
   values ("Joas Choque", "Rua Generation 62", 26152396, 1.800, "Instrutor Junior");
   INSERT INTO tb_colaboradores(nome,endereco,cep,salario,profissao)
   values ("Beatriz Cunha ", "Rua Generation 63", 26152363, 1.600, "Estagiario");
   
   SELECT * FROM tb_colaboradores WHERE salario > 2.000;
   SELECT * FROM tb_colaboradores WHERE salario < 2.000; 
   UPDATE tb_colaboradores SET cep = 152568963 WHERE id = 1;
   
   SELECT * FROM tb_colaboradores;
		