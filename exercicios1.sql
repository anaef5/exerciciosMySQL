CREATE DATABASE db_servicos_RH;

USE db_servicos_RH;

CREATE TABLE tb_colaboradores(
	id_colaborador int auto_increment primary key,
    nome varchar(200),
    cargo varchar(20),
    celular varchar(12),
    cpf varchar(100),
    salario decimal(65, 2)
);
ALTER TABLE tb_colaboradores MODIFY salario decimal(65, 3);
ALTER TABLE tb_colaboradores MODIFY cargo varchar(50);

INSERT INTO tb_colaboradores(nome, cargo, celular, cpf, salario)
VALUES("Rafa", "Analista de Sistemas", "92345-2384", "12345-678", 2.500);

INSERT INTO tb_colaboradores(nome, cargo, celular, cpf, salario)
VALUES("Ester", "Supervisora", "98520-8253", "23456-908", 4.000);

insert into tb_colaboradores(nome, cargo, celular, cpf, salario)
VALUES("Hernan", "RH", "98008-5345", "40028-922", 5.000);

INSERT INTO tb_colaboradores(nome, cargo, celular, cpf, salario)
VALUES("Sérgio", "Analista de Sistemas", "92345-2384", "12258-036", 1.975);

INSERT INTO tb_colaboradores(nome, cargo, celular, cpf, salario)
VALUES("Pablo", "Faxineiro", "91479-2382", "72953-672", 1.250);

SELECT * FROM tb_colaboradores WHERE salario > 2.000;

SELECT * FROM tb_colaboradores WHERE salario < 2.000;

UPDATE tb_colaboradores SET salario = 2.000 WHERE id_colaborador = 4;
UPDATE tb_colaboradores SET cargo = "Desenvolvedor JAVA Full Stack Jr." WHERE id_colaborador = 1;
UPDATE tb_colaboradores SET celular = "98734-8291" WHERE id_colaborador = 4;

SELECT * FROM tb_colaboradores;

CREATE DATABASE db_comercio;

USE db_comercio; 

CREATE TABLE tb_produtos(
	cod_prod int auto_increment primary key,
    nome varchar(200),
    qtd bigint,
    avaliacao decimal(65, 2),
    valor decimal(65, 3)
);

INSERT INTO tb_produtos (nome, qtd, avaliacao, valor)
VALUES("Note", 15, 4.5, 2.000);

INSERT INTO tb_produtos (nome, qtd, avaliacao, valor)
VALUES("Computador", 20, 4.3, 3.000);

INSERT INTO tb_produtos (nome, qtd, avaliacao, valor)
VALUES("Celular LG X Power", 25, 4.0, 750); 

INSERT INTO tb_produtos (nome, qtd, avaliacao, valor)
VALUES("Geladeira", 5, 3.5, 1.500);

INSERT INTO tb_produtos (nome, qtd, avaliacao, valor)
VALUES("TV", 10, 3.0, 2.500);

INSERT INTO tb_produtos (nome, qtd, avaliacao, valor)
VALUES("Liquidificador", 30, 4.9, 250.00);

INSERT INTO tb_produtos (nome, qtd, avaliacao, valor)
VALUES("Air Fryer", 45, 2.5, 150.00);

INSERT INTO tb_produtos (nome, qtd, avaliacao, valor)
VALUES("Modem", 50, 2.0, 100.00);

SELECT * FROM tb_produtos WHERE valor > 5;

SELECT * FROM tb_produtos WHERE valor < 5;

UPDATE tb_produtos SET qtd = 100 WHERE cod_prod = 8;

SELECT * FROM tb_produtos;

CREATE DATABASE db_escola;

USE db_escola;
CREATE TABLE tb_estudantes(
	id_estudante int auto_increment primary key,
    nome_est varchar(200),
    idade int,
    serie varchar(3),
    periodo varchar(10),
    nota decimal(65,1)
);

INSERT INTO tb_estudantes (nome_est, idade, serie, periodo, nota)
VALUES("Rafa", 20, "8ªA", "Integral", 8.9);

INSERT INTO tb_estudantes (nome_est, idade, serie, periodo, nota)
VALUES("Charlie", 48, "9ªC", "Noturno", 9.5);

INSERT INTO tb_estudantes (nome_est, idade, serie, periodo, nota)
VALUES("Chico", 90, "1ªE", "Diurno", 6.5);

INSERT INTO tb_estudantes (nome_est, idade, serie, periodo, nota)
VALUES("Maria", 18, "5ªD", "Integral", 7.8);

INSERT INTO tb_estudantes (nome_est, idade, serie, periodo, nota)
VALUES("Marcelo", 45, "7ªC", "Noturno", 6.9);

INSERT INTO tb_estudantes (nome_est, idade, serie, periodo, nota)
VALUES("Xavier", 19, "6ªE", "Integral", 8.2);

INSERT INTO tb_estudantes (nome_est, idade, serie, periodo, nota)
VALUES("Pri", 25, "8ªA", "Integral", 8.7);

INSERT INTO tb_estudantes (nome_est, idade, serie, periodo, nota)
VALUES("Jeff", 30, "9ªA", "Integral", 10.0);

SELECT * FROM tb_estudantes WHERE nota > 7.0;

SELECT * FROM tb_estudantes WHERE nota < 7.0;

UPDATE tb_estudantes SET nota = 6.0 WHERE id_estudante = 2;

SELECT * FROM tb_estudantes;
