select @@version;
CREATE DATABASE db_ecommerce;
USE db_ecommerce;

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
    preco DECIMAL(6,2) NOT NULL,
    colecao VARCHAR(255) NOT NULL,
    tamanho INT NOT NULL,
    quantidade INT,
    PRIMARY KEY(id)
);

INSERT INTO tb_produtos(nome, preco, colecao, tamanho, quantidade) VALUES (
"BobbieGoods", 500, "edição 1 limitada", 2, 30
);
INSERT INTO tb_produtos(nome, preco, colecao, tamanho, quantidade) VALUES (
"BobbieGoods", 550, "edição 2 limitada", 2, 35
);
INSERT INTO tb_produtos(nome, preco, colecao, tamanho, quantidade) VALUES (
"BobbieGoods", 600, "edição 3 limitada", 3, 20
);
INSERT INTO tb_produtos(nome, preco, colecao, tamanho, quantidade) VALUES (
"CozzyFriends", 350, "edição 1", 1, 30
);
INSERT INTO tb_produtos(nome, preco, colecao, tamanho, quantidade) VALUES (
"CozzyFriends", 400, "edição 2", 2, 35
);
INSERT INTO tb_produtos(nome, preco, colecao, tamanho, quantidade) VALUES (
"UrsinhosFofinhos", 250, "edição 1", 2, 20
);
INSERT INTO tb_produtos(nome, preco, colecao, tamanho, quantidade) VALUES (
"NatalQuentinho", 550, "edição 3", 3, 30
);
INSERT INTO tb_produtos(nome, preco, colecao, tamanho, quantidade) VALUES (
"FlorestaEncantada", 620, "edição 1", 1, 20
);

SELECT * FROM tb_produtos WHERE preco > 500;
SELECT * FROM tb_produtos WHERE preco < 500;

UPDATE tb_produtos SET preco = 300 WHERE id = 6;

SELECT * FROM tb_produtos;



	

