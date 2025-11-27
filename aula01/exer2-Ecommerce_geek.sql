CREATE DATABASE db_ecommerce_geek;

USE db_ecommerce_geek;

CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR (255) NOT NULL,
    categoria VARCHAR (255) NOT NULL,
    preco DECIMAL (10,2) NOT NULL,
    estoque INT,
    descricao VARCHAR (255) NOT NULL
);

INSERT INTO tb_produtos(nome, categoria, preco, estoque, descricao)
VALUES("Action Figure Naruto – Edição Shippuden", "Colecionáveis", 179.90, 15, "Action figure com 18 cm, personagem Naruto com modo Sábio.");
INSERT INTO tb_produtos(nome, categoria, preco, estoque, descricao)
VALUES("Camiseta One Piece – Luffy Gear 5", "Roupas", 69.90, 25, "Camiseta estampada, 100% algodão.");
INSERT INTO tb_produtos(nome, categoria, preco, estoque, descricao)
VALUES("Jogo PS5 – Ghost of Tsushima Director’s Cut", "Jogos", 299.90, 12, "Versão completa com conteúdos extras.");
INSERT INTO tb_produtos(nome, categoria, preco, estoque, descricao)
VALUES("Mousepad Gamer XXL – Demon Slayer", "Acessórios", 54.90, 30, "Mousepad grande com estampa dos Hashiras.");
INSERT INTO tb_produtos(nome, categoria, preco, estoque, descricao)
VALUES("Funko Pop! Michael Jackson", "Colecionáveis", 129.90, 20, "Funko Pop original, 10 cm.");
INSERT INTO tb_produtos(nome, categoria, preco, estoque, descricao)
VALUES("Chaveiro Metálico – Pokemon Pokeball", "Acessórios", 24.90, 40, "Chaveiro resistente, ideal para mochilas.");
INSERT INTO tb_produtos(nome, categoria, preco, estoque, descricao)
VALUES("Mangá JoJo's Bizarre Adventure – Parte 7 - Steel Ball run 02", "Livros / Mangás", 34.90, 10, "Edição oficial em português.");
INSERT INTO tb_produtos(nome, categoria, preco, estoque, descricao)
VALUES("Headset Gamer RGB – Dragon Sound", "Periféricos", 149.90, 10, "Som estéreo, iluminação RGB e microfone ajustável.");

SELECT * FROM tb_produtos;

-- SELECT que retorne todes os produtos com o valor MAIOR do que 500.
SELECT * FROM tb_produtos WHERE preco > 500;

-- SELECT que retorne todes os produtos com o valor MENOR do que 500.
SELECT * FROM tb_produtos WHERE preco < 500;

-- atualize um registro desta tabela através de uma query de atualização.
UPDATE tb_produtos SET preco = 500.90 WHERE id = 1;