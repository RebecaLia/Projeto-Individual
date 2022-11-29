create database marvel;
use marvel;

CREATE TABLE usuarios(
    id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50),
    sobrenome VARCHAR(50),
	email VARCHAR(50),
    cel CHAR(12),
	senha VARCHAR(50)
);

CREATE TABLE filmes(
   id INT PRIMARY KEY AUTO_INCREMENT,
   descricao VARCHAR(255),
   sinopse VARCHAR(1000),
   avaliacao DOUBLE,
   restricao_idade VARCHAR(45),
   titulo VARCHAR(45),
   ano_lancamento INT,
   duracao INT,
   img VARCHAR(255)
);

CREATE TABLE quiz(
   id INT PRIMARY KEY AUTO_INCREMENT,
   nome VARCHAR(45),
   qtd_perguntas INT
);

 CREATE TABLE pontuacao(
   id INT PRIMARY KEY AUTO_INCREMENT,
   pontos INT,
   fkUsuarios INT,
   CONSTRAINT fkUsuarios FOREIGN KEY (fkUsuarios)
   REFERENCES usuarios(id),
   fkQuiz INT,
   CONSTRAINT fkQuiz FOREIGN KEY (fkQuiz)
   REFERENCES quiz(id)
);
  INSERT INTO quiz(nome, qtd_perguntas) VALUES
  ('Quiz1', 10);













select * from usuarios;
select * from filmes;

drop table filmes;



