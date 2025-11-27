CREATE DATABASE db_colaboradores;

USE db_colaboradores;

CREATE TABLE tb_colaboradores(
    id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
	cargo VARCHAR(255) NOT NULL,
    departamento VARCHAR(50) NOT NULL,
    dataadmissao DATE,
	salario DECIMAL (10,2) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO tb_colaboradores(nome, cargo, departamento, dataadmissao, salario) 
VALUES ("Ana Silva","Analista de RH", "Recursos Humanos", "2023-02-15", 4500.00);
INSERT INTO tb_colaboradores(nome, cargo, departamento, dataadmissao, salario) 
VALUES ("Bruno Santos", "Desenvolvedor Backend", "TI", "2022-11-01", 6500.00);
INSERT INTO tb_colaboradores(nome, cargo, departamento, dataadmissao, salario) 
VALUES ("Carla Mendes","Assistente Administrativo", "Administrativo", "2024-01-10", 3000.00);
INSERT INTO tb_colaboradores(nome, cargo, departamento, dataadmissao, salario) 
VALUES ("Diego Rocha","Gerente de Projetos", "TI", "2017-03-02", 9000.00);
INSERT INTO tb_colaboradores(nome, cargo, departamento, dataadmissao, salario) 
VALUES ("Elisa Nunes","Financeiro Jr", "Financeiro", "2023-09-05", 3500.00);
INSERT INTO tb_colaboradores(nome, cargo, departamento, dataadmissao, salario) 
VALUES ("João Pereira","Estagiário", "TI", "2024-03-01", 1800.00);

SELECT * FROM tb_colaboradores;

-- SELECT que retorna colaboradores com o salário MAIOR do que 2000.
SELECT * FROM tb_colaboradores WHERE salario > 2000;

-- SELECT que retorna colaboradores com o salário MENOR do que 2000.
SELECT * FROM tb_colaboradores WHERE salario < 2000;

-- ATUALIZAÇÃO DA TABELA - Salário do colaborador João Pereira
UPDATE tb_colaboradores SET salario = 1900.00 WHERE id = 6;


