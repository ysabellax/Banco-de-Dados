select @@version;
CREATE DATABASE db_empresarh;
USE db_empresarh;

CREATE TABLE tb_colaboradores(
id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
    salario DECIMAL(6,2) NOT NULL,
    cargo VARCHAR(255) NOT NULL,
    admissao DATE NOT NULL,
    andar INT,
    PRIMARY KEY(id)
);

INSERT INTO tb_colaboradores(nome, salario, cargo, admissao, andar) VALUES ("Ysabella", 3000.00, "DevJunior", "2024-03-04", 3
);
INSERT INTO tb_colaboradores(nome, salario, cargo, admissao, andar) VALUES ("Rafael", 4000.00, "Administrador", "2023-08-07", 2
);
INSERT INTO tb_colaboradores(nome, salario, cargo, admissao, andar) VALUES ("Lianna", 1500.00, "Recepcionista", "2025-01-18", 1
);
INSERT INTO tb_colaboradores(nome, salario, cargo, admissao, andar) VALUES ("Mariana", 7000.00, "Gerente", "2022-03-12", 1
);
INSERT INTO tb_colaboradores(nome, salario, cargo, admissao, andar) VALUES ("Luiz", 4500.00, "Contador", "2024-05-27", 1
);


SELECT * FROM tb_colaboradores WHERE salario > 2000;
SELECT * FROM tb_colaboradores WHERE salario < 2000;

UPDATE tb_colaboradores SET andar = 2 WHERE id = 5;




