CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    classe VARCHAR(255) NOT NULL,
    arma VARCHAR(255) NOT NULL,
    descricao VARCHAR(255) NOT NULL
);

INSERT INTO tb_classes (classe, arma, descricao) 
VALUES ("Guerreiro", "Espada", "Combate corpo a corpo");
INSERT INTO tb_classes (classe, arma, descricao) 
VALUES ("Mago", "Cajado ou livro", "Usuário de magias");
INSERT INTO tb_classes (classe, arma, descricao) 
VALUES ("Arqueiro", "Arco", "Ataques à distância");
INSERT INTO tb_classes (classe, arma, descricao) 
VALUES ("Assassino", "Adagas", "Alta agilidade");
INSERT INTO tb_classes (classe, arma, descricao) 
VALUES ("Paladino", "Martelo", "Ataque e defesa");

SELECT * FROM tb_classes;


CREATE TABLE tb_personagens(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    nivel INT,
    ataque INT,
    defesa INT,
    classe_id BIGINT,
    
    FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);

INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id) VALUES
("Thorn", 10, 1800, 1200, 1),
("Ayla", 8, 1400, 1500, 2),
("Kael", 12, 2100, 1100, 3),
("Nyx", 15, 1940, 1800, 4),
("Chroma", 20, 2300, 1300, 1),
("Elias", 50, 3500, 2500, 2),
("Riven", 14, 2000, 1400, 3),
("Eron", 18, 2200, 1000, 5);

SELECT * FROM tb_personagens;

-- MOSTRAR * Personagens cujo poder de ataque seja MAIOR do que 2000.
SELECT * FROM tb_personagens WHERE ataque > 2000;

-- MOSTRAR * Personagens cujo poder de ataque seja MENOR do que 2000.
SELECT * FROM tb_personagens WHERE ataque < 2000;

-- MOSTRAR * Personagens cujo poder de defesa esteja no INTERVALO 1000 e 2000
SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;

-- MOSTRAR * Personagens que possuam a letra C no atributo nome.
SELECT * FROM tb_personagens WHERE nome LIKE "%C%";

-- União dos dados da tabela tb_personagens com os dados da tabela tb_classes.
SELECT nome, nivel, ataque, defesa, tb_classes.classe
FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classe_id = tb_classes.id;

-- Unindo dados das tabelas, mas APENAS os personagens que pertençam a uma classe específica
SELECT nome, nivel, ataque, defesa, tb_classes.classe
FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classe_id = tb_classes.id
WHERE classe = "Mago";










