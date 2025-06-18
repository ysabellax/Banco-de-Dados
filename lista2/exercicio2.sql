CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT,
	nome_classe VARCHAR(255) NOT NULL,
    tipo VARCHAR(255) NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE tb_pizzas(
id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
    valor DECIMAL(6,2) NOT NULL,
    tamanho VARCHAR(255) NOT NULL,
    borda VARCHAR(255) NOT NULL,
	PRIMARY KEY(id)
);

ALTER TABLE tb_pizzas ADD categoriasid BIGINT;

ALTER TABLE tb_pizzas ADD CONSTRAINT fk_pizzas_categorias
FOREIGN KEY (categoriasid) REFERENCES tb_categorias (id);

INSERT INTO tb_categorias(nome_classe, tipo) VALUES ("Pizza Doce", "Chocolate com Frutas"
);
INSERT INTO tb_categorias(nome_classe, tipo) VALUES ("Pizza Salgada", "Bacon com Cheddar"
);
INSERT INTO tb_categorias(nome_classe, tipo) VALUES ("Pizza Doce", "Chocolate com Prestígio"
);
INSERT INTO tb_categorias(nome_classe, tipo) VALUES ("Pizza Salgada", "Frango e Catupiry"
);
INSERT INTO tb_categorias(nome_classe, tipo) VALUES ("Pizza Salgada", "Mussarela e Calabresa"
);

INSERT INTO tb_pizzas(nome, valor, tamanho, borda, categoriasid) VALUES ("Sensação", 60.00, "Padrão", "Comum", 1
);
INSERT INTO tb_pizzas(nome, valor, tamanho, borda, categoriasid) VALUES ("Chocolate com Banana", 55.00, "Padrão", "Comum", 1
);
INSERT INTO tb_pizzas(nome, valor, tamanho, borda, categoriasid) VALUES ("Cheddar e Bacon", 35.00, "Brotinho", "Recheada", 2
);
INSERT INTO tb_pizzas(nome, valor, tamanho, borda, categoriasid) VALUES ("Prestígio", 40.00, "Brotinho", "Comum", 3
);
INSERT INTO tb_pizzas(nome, valor, tamanho, borda, categoriasid) VALUES ("Frango com Catupiry", 39.00, "Padrão", "Comum", 4
);
INSERT INTO tb_pizzas(nome, valor, tamanho, borda, categoriasid) VALUES ("Toscana", 39.00, "Padrão", "Comum", 5
);
INSERT INTO tb_pizzas(nome, valor, tamanho, borda, categoriasid) VALUES ("Chocolate com Uva", 60.00, "Padrão", "Rechada", 1
);
INSERT INTO tb_pizzas(nome, valor, tamanho, borda, categoriasid) VALUES ("1/2 Musssarela 2/2 Calabresa", 60.00, "Padrão", "Comum", 5
);

SELECT * FROM tb_pizzas WHERE valor > 45.00;
SELECT * FROM tb_pizzas WHERE valor BETWEEN 50.00 AND 100.00;
SELECT * FROM tb_pizzas WHERE nome LIKE "%m%";

SELECT nome, valor, tamanho, borda, tb_categorias.nome_classe, tb_categorias.tipo
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoriasid = tb_categorias.id;

SELECT nome, valor, tamanho, borda, tb_categorias.nome_classe, tb_categorias.tipo
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoriasid = tb_categorias.id
WHERE categoriasid = 1;