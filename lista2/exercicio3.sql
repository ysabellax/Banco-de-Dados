CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT,
	nome_classe VARCHAR(255) NOT NULL,
    tipo VARCHAR(255) NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
    valor DECIMAL(6,2) NOT NULL,
    uso VARCHAR(255) NOT NULL,
    datavalidade DATE,
	PRIMARY KEY(id)
);

ALTER TABLE tb_produtos ADD categoriasid BIGINT;

ALTER TABLE tb_produtos ADD CONSTRAINT fk_produtos_categorias
FOREIGN KEY (categoriasid) REFERENCES tb_categorias (id);

INSERT INTO tb_categorias(nome_classe, tipo) VALUES ("Cosméticos", "Uso Pessoal"
);
INSERT INTO tb_categorias(nome_classe, tipo) VALUES ("Cosméticos", "Higiene"
);
INSERT INTO tb_categorias(nome_classe, tipo) VALUES ("Remédio", "Comprimido"
);
INSERT INTO tb_categorias(nome_classe, tipo) VALUES ("Remédio", "Em gotas"
);
INSERT INTO tb_categorias(nome_classe, tipo) VALUES ("Acessórios", "de ouro"
);

INSERT INTO tb_produtos(nome, valor, uso, datavalidade, categoriasid) VALUES ("Absorvente", 10.00, "íntimo", "2025-12-07", 1
);
INSERT INTO tb_produtos(nome, valor, uso, datavalidade, categoriasid) VALUES ("Desodorante", 14.00, "íntimo", "2025-11-13", 2
);
INSERT INTO tb_produtos(nome, valor, uso, datavalidade, categoriasid) VALUES ("BeneGripe", 51.00, "Oral", "2026-01-7", 3
);
INSERT INTO tb_produtos(nome, valor, uso, datavalidade, categoriasid) VALUES ("Paracetamol", 52.00, "Oral", "2026-01-7", 3
);
INSERT INTO tb_produtos(nome, valor, uso, datavalidade, categoriasid) VALUES ("Dipirona", 9.00, "Oral", "2026-01-7", 4
);
INSERT INTO tb_produtos(nome, valor, uso, datavalidade, categoriasid) VALUES ("Brinco Bebê", 60.00, "Furo na Orelha", NULL, 5
);
INSERT INTO tb_produtos(nome, valor, uso, datavalidade, categoriasid) VALUES ("Brinco", 55.00, "Furo na Orelha", NULL ,5
);
INSERT INTO tb_produtos(nome, valor, uso, datavalidade, categoriasid) VALUES ("Brinco", 70.00, "De pressão", NULL ,5
);

SELECT * FROM tb_produtos WHERE valor > 50.00;
SELECT * FROM tb_produtos WHERE valor BETWEEN 5.00 AND 60.00;
SELECT * FROM tb_produtos WHERE nome LIKE "%c%";

SELECT nome, valor, uso, datavalidade, tb_categorias.nome_classe, tb_categorias.tipo
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoriasid = tb_categorias.id;

SELECT nome, valor, uso, datavalidade, tb_categorias.nome_classe, tb_categorias.tipo
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoriasid = tb_categorias.id
WHERE categoriasid = 3;