
CREATE DATABASE Livraria;
SHOW DATABASES;

USE Livraria;
CREATE TABLE livro (
Id INT AUTO_INCREMENT,
Livro VARCHAR(300),
Autor VARCHAR (100),
Sexo ENUM ('Masculino', 'Feminino'),
Paginas INT,
Editora VARCHAR (11),
Valor_Capa DECIMAL,
Valor_kindle DECIMAL,
Ano_Publicacao INT, 
PRIMARY KEY (Id)
);

INSERT INTO Livraria.Livro (Livro, Autor, Sexo, Paginas, Editora, Valor_Capa, Valor_Kindle, Ano_Publicacao) VALUES
('Pai Rico, Pai Pobre', 'Robert T. Kiyosaki', 'Masculino', 336, 'Alta Books', 61.53, 58.45, 2018),
('Mindset', 'Carol S. Dweck', 'Feminino', 312, 'Objetiva',  38.99, 14.95, 2017),
('Como fazer amigos e influenciar pessoas', 'Dale Carnegie','Masculino', 256, 'Sextante', 38.99, 33.24, 2019),
('A Cabana', 'William P.Young','Masculino', 240, 'Arqueiro', 35.99, 17.90, 2008),
('O Poder do Hábito','Charles Duhigg','Masculino', 408, 'Objetiva', 42.99, 29.90, 2012),
('Código Limpo','Robert C. Martin','Masculino', 425, 'Alta Books', 91.99, 87.90, 2009),
('Esencialismo', 'Greg McKeown','Masculino', 272, 'Sextante', 53.58, 33.24, 2015),
('Me Poupe!','Nathalia Arcuri','Feminino', 176, 'Sextante', 32.86, 17.09, 2018),
('Comece pelo Porquê','Simon Sinek', 'Masculino', 256, 'Sextante', 50.58, 24.90, 2018),
('O Alquimista','Paulo Coelho','Masculino', 206, 'Paralela', 24.70, 14.70, 2017);

SELECT * FROM Livraria.Livro where ID >0  AND Livro LIKE '%m%';

-- Trazer todos os dados
SELECT * FROM Livraria.Livro;

-- 1 Trazer o nome do livro e o nome da Editora
SELECT Livro, Editora FROM Livraria.Livro; 
-- 2 Trazer no nome do Livro e editora;
SELECT Livro, Editora FROM Livraria.Livro;
-- 3 Trazer o nome do livro, editora, autores do sexo masculino
SELECT livro, Editora, Autor FROM Livraria.Livro WHERE sexo LIKE '%M';
-- 4 Trazer nome do livro, número de páginas do livro e autores do sexto feminino
SELECT Livro, Paginas, Autor FROM Livraria.Livro WHERE sexo LIKE 'f%';
-- 5 Trazer nome do autor, editora e ano de publicação dos livros que tenham sido publicados a partir do ano 2017;
SELECT Autor, Editora, Ano_Publicacao FROM Livraria.Livro WHERE Ano_Publicacao >=2017; 
-- 6 Trazer o nome dos autores do sexo masculino com livros publicados pela editora sextante ou pela editora Alta books;
SELECT Autor, Editora, Sexo FROM Livraria.Livro WHERE Sexo = 'Masculino' AND Editora = 'Sextante' OR Editora = 'Alta Books';   
-- 7 Trazer o nome do livro, do autor, número de páginas, editora, ano de publicação e valor da capa comum
SELECT Livro, Autor, Paginas, Editora, Ano_Publicacao, Valor_Capa FROM Livraria.Livro; 
-- 8 Trazer o nome do livro, do autor, número de páginas e valor no Kindle;
SELECT Livro, Autor, Paginas, Valor_Kindle FROM Livraria.Livro; 
-- 9 Trazer o nome dos autores com livros publicados pela editora Sextante;
SELECT Autor FROM Livraria.Livro WHERE Autor LIKE 'S%'; 
-- 10 Trazer o nome do livro, autores, valor com capa comum e valor no Kindle 
SELECT Livro, Autores, Valor_Capa, Valor_Kindle FROM Livraria.Livros; 
