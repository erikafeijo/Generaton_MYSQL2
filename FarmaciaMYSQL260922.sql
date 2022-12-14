CREATE DATABASE DB_FARMACIA;

USE DB_FARMACIA;

CREATE TABLE TB_CATEGORIAS(
ID BIGINT AUTO_INCREMENT,
DESCRICAO VARCHAR(255) NOT NULL,
PRIMARY KEY(ID)
);

CREATE TABLE TB_PRODUTOS (
REFERENCIA BIGINT AUTO_INCREMENT,
NOME VARCHAR(255) NOT NULL,
PRECO FLOAT(6,2) NOT NULL,
CATEGORIA_ID BIGINT,
PRIMARY KEY (REFERENCIA),
FOREIGN KEY (CATEGORIA_ID) REFERENCES TB_CATEGORIAS (ID)
);

INSERT INTO TB_CATEGORIAS (DESCRICAO)
VALUES ("BEBÊ");
INSERT INTO TB_CATEGORIAS (DESCRICAO)
VALUES ("SAÚDE DA MULHER");
INSERT INTO TB_CATEGORIAS (DESCRICAO)
VALUES ("HIGIENE PESSOAL");
INSERT INTO TB_CATEGORIAS (DESCRICAO)
VALUES ("REMÉDIOS");
INSERT INTO TB_CATEGORIAS (DESCRICAO)
VALUES ("ALIMENTOS");

SELECT * FROM TB_CATEGORIAS;

INSERT INTO TB_PRODUTOS (NOME, PRECO, CATEGORIA_ID)
VALUES ("FRALDAS", 55.80, 1);
INSERT INTO TB_PRODUTOS (NOME, PRECO, CATEGORIA_ID)
VALUES ("SABONETE ÍNTIMO", 21.50, 2);
INSERT INTO TB_PRODUTOS (NOME, PRECO, CATEGORIA_ID)
VALUES ("KIT SHAMPOO E CONDICIONADOR", 12, 4);
INSERT INTO TB_PRODUTOS (NOME, PRECO, CATEGORIA_ID)
VALUES ("CORISTINA D / 5 COMPRIMIDOS", 7.70, 4);
INSERT INTO TB_PRODUTOS (NOME, PRECO, CATEGORIA_ID)
VALUES ("CHOCOLTE LACTA", 4.50, 5);
INSERT INTO TB_PRODUTOS (NOME, PRECO, CATEGORIA_ID)
VALUES ("GILLETTE VÊNUS", 21.90, 2);
INSERT INTO TB_PRODUTOS (NOME, PRECO, CATEGORIA_ID)
VALUES ("POMADA HIPOGLOS", 8.9, 1);
INSERT INTO TB_PRODUTOS (NOME, PRECO, CATEGORIA_ID)
VALUES ("ANTICONCEPCIONAL IUMI", 62.9, 4);

SELECT * FROM TB_PRODUTOS;

SELECT * FROM TB_PRODUTOS WHERE PRECO > 50;
SELECT * FROM TB_PRODUTOS WHERE PRECO >= 5 AND PRECO <= 60;
SELECT * FROM TB_PRODUTOS WHERE NOME LIKE "%C%";
SELECT * FROM TB_PRODUTOS INNER JOIN TB_CATEGORIAS ON TB_PRODUTOS.CATEGORIA_ID = TB_CATEGORIAS.ID;
SELECT * FROM TB_PRODUTOS INNER JOIN TB_CATEGORIAS ON TB_PRODUTOS.CATEGORIA_ID = TB_CATEGORIAS.ID WHERE ID = 1;