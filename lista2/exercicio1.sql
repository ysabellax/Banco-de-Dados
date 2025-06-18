CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classes(
id BIGINT AUTO_INCREMENT,
	nome_classe VARCHAR(255) NOT NULL,
    tipo VARCHAR(255) NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE tb_personagens(
id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
    poder INT NOT NULL,
    defesa INT NOT NULL,
    nivel VARCHAR(255) NOT NULL,
	PRIMARY KEY(id)
);

ALTER TABLE tb_personagens ADD classesid BIGINT;

ALTER TABLE tb_personagens ADD CONSTRAINT fk_personagens_classes
FOREIGN KEY (classesid) REFERENCES tb_classes (id);

INSERT INTO tb_classes(nome_classe, tipo) VALUES ("Bruxa", "Magia Obscura"
);
INSERT INTO tb_classes(nome_classe, tipo) VALUES ("Fada", "Magia Reluzente"
);
INSERT INTO tb_classes(nome_classe, tipo) VALUES ("Sereia", "Magia dos Mares"
);
INSERT INTO tb_classes(nome_classe, tipo) VALUES ("Vampira", "Magia da Imortalidade"
);
INSERT INTO tb_classes(nome_classe, tipo) VALUES ("Anjo", "Magia Rara Poder Supremo"
);

INSERT INTO tb_personagens(nome, poder, defesa, nivel, classesid) VALUES ("Tenebra Vultaria", 1700, 1900, "Comum", 1
);
INSERT INTO tb_personagens(nome, poder, defesa, nivel, classesid) VALUES ("Faylith do Vento", 1800, 1600, "Comum", 2
);
INSERT INTO tb_personagens(nome, poder, defesa, nivel, classesid) VALUES ("Sirena", 2200, 1800, "Alto", 3
);
INSERT INTO tb_personagens(nome, poder, defesa, nivel, classesid) VALUES ("Zaphyra", 2000, 2200, "Alto", 4
);
INSERT INTO tb_personagens(nome, poder, defesa, nivel, classesid) VALUES ("Lúmina Celeste", 2600, 2600, "Supremo", 5
);
INSERT INTO tb_personagens(nome, poder, defesa, nivel, classesid) VALUES ("Sylvara Musgoverde", 1600, 1900, "Comum", 1
);
INSERT INTO tb_personagens(nome, poder, defesa, nivel, classesid) VALUES ("Star Noturna", 1900, 1500, "Comum", 2
);
INSERT INTO tb_personagens(nome, poder, defesa, nivel, classesid) VALUES ("Ondara", 2000, 1900, "Alto", 3
);

SELECT * FROM tb_personagens WHERE poder > 2000;
SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;
SELECT * FROM tb_personagens WHERE nome LIKE "%c%";

SELECT nome, poder, defesa, nivel, tb_classes.nome_classe, tb_classes.tipo
FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classesid = tb_classes.id;

SELECT nome, poder, defesa, nivel, tb_classes.nome_classe, tb_classes.tipo
FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classesid = tb_classes.id
WHERE classesid = 3;







