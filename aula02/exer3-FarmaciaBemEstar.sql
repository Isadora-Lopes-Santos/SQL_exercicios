CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    departamento VARCHAR(255) NOT NULL,
    descricao VARCHAR(255)
);

INSERT INTO tb_categorias(departamento, descricao) VALUES
("Medicamentos", "Remédios para tratamentos diversos"),
("Suplementos", "Vitaminas e minerais"),
("Higiene", "Produtos de higiene pessoal"),
("Cosméticos", "Produtos de beleza e cuidado com a pele"),
("Infantil", "Produtos para bebês e crianças");

SELECT * FROM tb_categorias;
 

CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    preco DECIMAL (10,2) NOT NULL,
    estoque INT NOT NULL,
    fabricante VARCHAR(255) NOT NULL,
    categoriaid BIGINT NOT NULL,
    
    FOREIGN KEY (categoriaid) REFERENCES tb_categorias(id)
);

INSERT INTO tb_produtos(nome, preco, estoque, fabricante, categoriaid) VALUES
("Paracetamol", 8.50, 100, "MarcoPolo Ltda", 1),
("Amoxicilina", 15.00, 50, "BioPharma", 1),
("Vitamina C 500mg", 12.00, 200, "NutriVida", 2),
("Leite em Pó Infantil", 25.00, 80, "BabyCare", 5),
("Shampoo Anticaspa", 18.50, 60, "HigieneMais", 3),
("Creme Hidratante", 22.00, 120, "BelezaNatural", 4),
("Fralda Descartável P", 55.00, 150, "BabyCare", 5),
("Multivitamínico Adulto", 30.00, 90, "NutriVida", 2);

SELECT * FROM tb_produtos;

-- SELECT que FROM * tb_pizzas cujo valor seja MAIOR do que R$ 45,00.
SELECT * FROM tb_produtos WHERE preco > 50.00;

-- SELECT que FROM * tb_pizzas cujo valor esteja no INTERVALO R$ 50,00 e R$ 100,00.
SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;

-- SELECT LIKE, buscando * tb_pizzas que possuam a letra M no atributo nome.
SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

-- SELECT INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias.
SELECT nome, preco, estoque, fabricante, tb_categorias.departamento
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoriaid = tb_categorias.id;

-- SELECT INNER JOIN, onde traga APENAS TB-pizzas que pertençam a uma categoria específica
SELECT nome, preco, estoque, fabricante, tb_categorias.departamento
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoriaid = tb_categorias.id
WHERE departamento = "Suplementos";