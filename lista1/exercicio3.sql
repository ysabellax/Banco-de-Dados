CREATE DATABASE db_escola;
USE db_escola;

CREATE TABLE tb_registro(
id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
    matricula DATE,
    nota DECIMAL(3,1) NOT NULL,
    faltas INT,
    turma INT,
    PRIMARY KEY(id)
);

INSERT INTO tb_registro(nome, matricula, nota, faltas, turma) VALUES ("Ysabella", "2018-01-10", 10, 4, 2
);
INSERT INTO tb_registro(nome, matricula, nota, faltas, turma) VALUES ("João", "2017-01-13", 7, 8, 3
);
INSERT INTO tb_registro(nome, matricula, nota, faltas, turma) VALUES ("Ana", "2018-01-7", 9.5, 6, 2
);
INSERT INTO tb_registro(nome, matricula, nota, faltas, turma) VALUES ("Lucas", "2016-01-7", 6.5, 10, 7
);
INSERT INTO tb_registro(nome, matricula, nota, faltas, turma) VALUES ("Maria", "2016-01-23", 8, 5, 3
);
INSERT INTO tb_registro(nome, matricula, nota, faltas, turma) VALUES ("Patricia", "2017-01-11", 10, 2, 7
);
INSERT INTO tb_registro(nome, matricula, nota, faltas, turma) VALUES ("Pedro", "2019-01-11", 7.5, 7, 3
);
INSERT INTO tb_registro(nome, matricula, nota, faltas, turma) VALUES ("Tulio", "2022-01-23", 4.5, 11, 2
);

SELECT * FROM tb_registro WHERE nota > 7.0;
SELECT * FROM tb_registro WHERE nota < 7.0;

UPDATE tb_registro SET nota = 5 WHERE id = 3;

SELECT * FROM tb_registro