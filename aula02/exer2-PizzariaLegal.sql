CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    tipo VARCHAR(255) NOT NULL,
    descricao VARCHAR(255) NOT NULL
);

INSERT INTO tb_categorias(tipo, descricao) VALUES
("Tradicional", "Pizzas salgadas clássicas da pizzaria"),
("Doce", "Pizzas com sabores doces e sobremesa"),
("Vegetariana", "Pizzas sem carne, com legumes e queijos"),
("Especial", "Pizzas com combinações especiais ou premium"),
("Vegana", "Pizzas 100% vegetais, sem ingredientes de origem animal");

SELECT * FROM tb_categorias;

CREATE TABLE tb_pizzas(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    ingredientes VARCHAR(255) NOT NULL,
    preco DECIMAL(6,2),
    tamanho VARCHAR(255) NOT NULL,
    categoria_id BIGINT,
    
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_pizzas(nome, ingredientes, preco, tamanho, categoria_id) VALUES
("Calabresa", "Calabresa, cebola, mussarela", 39.90, "Média", 1),
("Chocolate", "Chocolate ao leite", 19.90, "Pequena", 2),
("Marguerita", "Queijo, tomate e manjericão", 49.90, "Grande", 3),
("Frango com Catupiry", "Frango, catupiry, mussarela", 50.90, "Grande", 1),
("Portuguesa", "Presunto, ovos, mussarela, cebola", 52.90, "Grande", 4),
("Nutella", "Nutella, morango", 32.90, "Pequena", 2),
("Palmito", "Palmito, mussarela, tomate", 48.90, "Média", 3),
("Veggie Especial", "Legumes variados, mussarela vegana", 69.99, "Grande", 5);

SELECT * FROM tb_pizzas;

-- SELECT que FROM * tb_pizzas cujo valor seja MAIOR do que R$ 45,00.
SELECT * FROM tb_pizzas WHERE preco > 45.00;

-- SELECT que FROM * tb_pizzas cujo valor esteja no INTERVALO R$ 50,00 e R$ 100,00.
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

-- SELECT LIKE, buscando * tb_pizzas que possuam a letra M no atributo nome.
SELECT * FROM tb_pizzas WHERE nome LIKE "%M%";

-- SELECT INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias.
SELECT nome, ingredientes, preco, tamanho, tb_categorias.tipo
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoria_id = tb_categorias.id;

-- SELECT INNER JOIN, onde traga APENAS TB-pizzas que pertençam a uma categoria específica
SELECT nome, ingredientes, preco, tamanho, tb_categorias.tipo
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoria_id = tb_categorias.id
WHERE tipo = "Vegetariana";