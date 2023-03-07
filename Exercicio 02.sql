CREATE DATABASE db_lojinha;
USE db_lojinha;

CREATE TABLE tb_produtos (
id bigint auto_increment,
nomeprod varchar (255) not null,
quant int not null,
precounit decimal not null,
categoria varchar (255) not null,
estoque int not null, 
PRIMARY KEY (id)
 );
 
 INSERT INTO tb_produtos ( nomeprod, quant, precounit,categoria,estoque)
 values (" The Last Of Us - Jogo PS5", 55, 150.00, "Apocaliptico", 100);
  INSERT INTO tb_produtos ( nomeprod, quant, precounit,categoria,estoque)
 values (" God Of War - Jogo PS5", 33, 50.00, "Aventura", 100);
  INSERT INTO tb_produtos ( nomeprod, quant, precounit,categoria,estoque)
 values (" Elden Ring - Jogo PS5", 60, 200.00, "RPG", 100);
  INSERT INTO tb_produtos ( nomeprod, quant, precounit,categoria,estoque)
 values (" Sillent Hill - Jogo PS3", 45, 100.00, "Terror", 100);
  INSERT INTO tb_produtos ( nomeprod, quant, precounit,categoria,estoque)
 values (" Resident Evil 4 Remake - Jogo PS5", 96, 350.00, "Terror", 100);
  INSERT INTO tb_produtos ( nomeprod, quant, precounit,categoria,estoque)
 values ("The Witcher 3 - Jogo PS5", 52, 230.00, "RPG", 100);
  INSERT INTO tb_produtos ( nomeprod, quant, precounit,categoria,estoque)
 values (" Tom Raider - Jogo PS5", 58, 100.00, "Ação", 100);
  INSERT INTO tb_produtos ( nomeprod, quant, precounit,categoria,estoque)
 values (" Metal Hellsinger - Jogo PC", 12, 120.00, "FPS", 100);
 
 SELECT *FROM tb_produtos WHERE precounit > 200.00;
 SELECT *FROM tb_produtos WHERE precounit < 200.00;
 UPDATE tb_produtos SET precounit = 80.00 WHERE id = 7;
 SELECT * FROM tb_produtos;
 -- eu fiz o select com o valor menor e maior que 200 pra ficar mais
 -- qualificado pro tipo de produto que inseri, no caso jogos eletronicos.
 