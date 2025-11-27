CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_alunos(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR (255) NOT NULL,
    especie VARCHAR(255) NOT NULL,
    nota DECIMAL(3,1),
    observacoes VARCHAR(255) NOT NULL
);

INSERT INTO tb_alunos (nome, especie, nota, observacoes)
VALUES ("Flash", "Bicho-preguiça", 5, "Aprende devagar, mas segura os conceitos");
INSERT INTO tb_alunos (nome, especie, nota, observacoes)
VALUES ("Nami", "Raposa", 9.5 , "Inteligente e rápida nas tarefas");
INSERT INTO tb_alunos (nome, especie, nota, observacoes)
VALUES ("Rocky", "Cachorro", 8 , "Participativo e aplicado. Sempre busca ajudar os colegas");
INSERT INTO tb_alunos (nome, especie, nota, observacoes)
VALUES ("Delphis", "Golfinho", 10, "Excelente em comunicação");
INSERT INTO tb_alunos (nome, especie, nota, observacoes)
VALUES ("Alvin", "Esquilo", 3, "Fica mais fora da sala do que nela. Precisa de foco");
INSERT INTO tb_alunos (nome, especie, nota, observacoes)
VALUES ("Doflamingo", "Flamingo", 6, "Bom equilíbrio entre prática e teoria");
INSERT INTO tb_alunos (nome, especie, nota, observacoes)
VALUES ("Shadow", "Ouriço", 10, "Extremamente inteligente");
INSERT INTO tb_alunos (nome, especie, nota, observacoes)
VALUES ("Bubbles", "Peixe", 1, "Sempre perdendo o foco e dormindo na aula");

SELECT * FROM tb_alunos;

-- SELECT que retorne todes o/a(s) estudantes com a nota MAIOR do que 7.0.
SELECT * FROM tb_alunos WHERE nota > 7;

-- SELECT que retorne todes o/a(s) estudantes com a nota MENOR do que 7.0.
SELECT * FROM tb_alunos WHERE nota < 7;

-- DELETAR LINHA
DELETE FROM tb_alunos WHERE id = 1;

UPDATE tb_alunos SET nota = 2 WHERE id = 9;
