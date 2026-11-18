CREATE DATABASE db_Livraria;

USE db_Livraria;

CREATE TABLE tbl_editoras (
	id_editora INT ,
	nome_empresa VARCHAR (100) NOT NULL,
	telefone VARCHAR (20) NOT NULL,
	email_corporativo VARCHAR (100) NOT NULL,
	PRIMARY KEY (id_editora)
);

INSERT INTO tbl_editoras (id_editora,nome_empresa,email_corporativo,telefone) VALUES
   (1, 'Abel Editora', 'abelFereira@gmail.com', '11-30642-2341'),
   (2, 'BrLivros', 'BrLivros@gmail.com', '11-20482-4423'),
   (3, 'Cesar Paginas', 'CesarPaginas@gmail.com', '11-97862-4741'),
   (4, 'Denis Editora', 'DenisEditora@gmail.com', '11-90112-7141'),
   (5, 'Eraldo Editora', 'EraldoEditora@gmail.com', '11-92344-8511'),
   (6, 'Fabio Editora', 'Fabioeditora@gmail.com', '11-94202-8341'),
   (7, 'Geraldo Livros', 'Geraldolivros@gmail.com', '11-84734-1231'),
   (8, 'Haimundo Editora', 'haimundoeditora@gmail.com', '11-24502-6345'),
   (9, 'Indigena Book', 'Indigenabook@gmail.com', '11-67132-8341'),
   (10, 'Joel Editoras', 'joelEditoras@gmail.com', '11-53151-2341');

 SELECT * FROM tbl_editoras
   
 CREATE TABLE tbl_autores (
	cod_autor INT ,
    nome_completo VARCHAR(200) NOT NULL,
	nacionalidade VARCHAR(50) NOT NULL,
	data_nascimento DATE NOT NULL,
	PRIMARY KEY(cod_autor)
 );

 INSERT INTO tbl_autores (cod_autor,nome_completo,nacionalidade,data_nascimento) VALUES
		(1, 'Machado de Assis', 'Brasileira', '1839-06-21'),
		(2, 'Clarice Lispector', 'Brasileira', '1920-12-10'),
		(3, 'Jorge Amado', 'Brasileira', '1912-08-10'),
		(4, 'Carlos Drummond de Andrade', 'Brasileira', '1902-10-31'),
		(5, 'Guimarães Rosa', 'Brasileira', '1908-06-27'),
		(6, 'Cecília Meireles', 'Brasileira', '1901-11-07'),
		(7, 'Monteiro Lobato', 'Brasileira', '1882-04-18'),
		(8, 'Graciliano Ramos', 'Brasileira', '1892-10-27'),
		(9, 'Lima Barreto', 'Brasileira', '1881-05-13'),
		(10, 'José de Alencar', 'Brasileira', '1829-05-01'),
		(11, 'William Shakespeare', 'Inglesa', '1564-04-26'),
		(12, 'Jane Austen', 'Inglesa', '1775-12-16'),
		(13, 'Charles Dickens', 'Inglesa', '1812-02-07'),
		(14, 'Virginia Woolf', 'Inglesa', '1882-01-25'),
		(15, 'George Orwell', 'Inglesa', '1903-06-25'),
		(16, 'Agatha Christie', 'Inglesa', '1890-09-15'),
		(17, 'J.R.R. Tolkien', 'Inglesa', '1892-01-03'),
		(18, 'Arthur Conan Doyle', 'Inglesa', '1859-05-22'),
		(19, 'Mary Shelley', 'Inglesa', '1797-08-30'),
		(20, 'C.S. Lewis', 'Britânica', '1898-11-29'),
		(21, 'Gabriel García Márquez', 'Colombiana', '1927-03-06'),
		(22, 'Isabel Allende', 'Chilena', '1942-08-02'),
		(23, 'Pablo Neruda', 'Chilena', '1904-07-12'),
		(24, 'Jorge Luis Borges', 'Argentina', '1899-08-24'),
		(25, 'Julio Cortázar', 'Argentina', '1914-08-26'),
		(26, 'Mario Vargas Llosa', 'Peruana', '1936-03-28'),
		(27, 'Octavio Paz', 'Mexicana', '1914-03-31'),
		(28, 'Miguel de Cervantes', 'Espanhola', '1547-09-29'),
		(29, 'Federico García Lorca', 'Espanhola', '1898-06-05'),
		(30, 'José Saramago', 'Portuguesa', '1922-11-16'),
		(31, 'Fernando Pessoa', 'Portuguesa', '1888-06-13'),
		(32, 'Eça de Queirós', 'Portuguesa', '1845-11-25'),
		(33, 'Luís de Camões', 'Portuguesa', '1524-12-01'),
		(34, 'Victor Hugo', 'Francesa', '1802-02-26'),
		(35, 'Albert Camus', 'Francesa', '1913-11-07'),
		(36, 'Jean-Paul Sartre', 'Francesa', '1905-06-21'),
		(37, 'Alexandre Dumas', 'Francesa', '1802-07-24'),
		(38, 'Jules Verne', 'Francesa', '1828-02-08'),
		(39, 'Antoine de Saint-Exupéry', 'Francesa', '1900-06-29'),
		(40, 'Fiódor Dostoiévski', 'Russa', '1821-11-11'),
		(41, 'Liev Tolstói', 'Russa', '1828-09-09'),
		(42, 'Antón Téchov', 'Russa', '1860-01-29'),
		(43, 'Franz Kafka', 'Tcheca', '1883-07-03'),
		(44, 'Friedrich Nietzsche', 'Alemã', '1844-10-15'),
		(45, 'Johann Wolfgang von Goethe', 'Alemã', '1749-08-28'),
		(46, 'Mark Twain', 'Americana', '1835-11-30'),
		(47, 'Edgar Allan Poe', 'Americana', '1809-01-19'),
		(48, 'Ernest Hemingway', 'Americana', '1899-07-21'),
		(49, 'Stephen King', 'Americana', '1947-09-21'),
		(50, 'Ray Bradbury', 'Americana', '1920-08-22');

SELECT * FROM tbl_autores

CREATE TABLE tbl_livros (
	isbn INT,
	titulo VARCHAR(100) NOT NULL,
	preco_venda DECIMAL (10,2) NOT NULL,
	estoque INT CHECK (estoque >= 0) NOT NULL,
	ano_publicacao DATE NOT NULL,
	id_editora INT NOT NULL,
	PRIMARY KEY (isbn),
	FOREIGN KEY (id_editora) REFERENCES tbl_editoras (id_editora)

);

INSERT INTO tbl_livros (isbn,titulo,preco_venda,estoque,ano_publicacao,id_editora) VALUES

		(1001, 'Dom Casmurro', 49.90, 15, '1899-01-01', 1),
		(1002, 'Memórias Póstumas de Brás Cubas', 45.00, 20, '1881-01-01', 2),
		(1003, 'A Hora da Estrela', 39.90, 12, '1977-12-01', 3),
		(1004, 'Capitães da Areia', 52.50, 8, '1937-01-01', 4),
		(1005, 'Grande Sertão: Veredas', 69.90, 5, '1956-01-01', 5),
		(1006, 'Vidas Secas', 42.00, 14, '1938-01-01', 6),
		(1007, 'O Cortiço', 35.00, 18, '1890-01-01', 7),
		(1008, 'Quincas Borba', 44.90, 10, '1891-01-01', 8),
		(1009, 'Triste Fim de Policarpo Quaresma', 38.00, 7, '1915-01-01', 9),
		(1010, 'Iracema', 29.90, 25, '1865-01-01', 10),
		(1011, 'Romeu e Julieta', 25.00, 30, '1597-01-01', 1),
		(1012, 'Orgulho e Preconceito', 49.90, 22, '1813-01-28', 2),
		(1013, 'Oliver Twist', 55.00, 9, '1838-01-01', 3),
		(1014, '1984', 59.90, 40, '1949-06-08', 4),
		(1015, 'A Revolução dos Bichos', 39.90, 35, '1945-08-17', 5),
		(1016, 'O Assassinato de Roger Ackroyd', 49.90, 16, '1926-06-19', 6),
		(1017, 'O Hobbit', 69.90, 50, '1937-09-21', 7),
		(1018, 'A Sociedade do Anel', 79.90, 25, '1954-07-29', 8),
		(1019, 'Um Estudo em Vermelho', 32.00, 11, '1887-11-01', 9),
		(1020, 'Frankenstein', 45.00, 13, '1818-01-01', 10),
		(1021, 'Cem Anos de Solidão', 69.90, 28, '1967-06-05', 1),
		(1022, 'A Casa dos Espíritos', 59.90, 14, '1982-01-01', 2),
		(1023, 'Ficções', 49.90, 10, '1944-01-01', 3),
		(1024, 'A Metamorfose', 29.90, 20, '1915-10-01', 4),
		(1025, 'Crime e Castigo', 79.90, 12, '1866-01-01', 5),
		(1026, 'Guerra e Paz', 99.90, 6, '1869-01-01', 6),
		(1027, 'O Pequeno Príncipe', 34.90, 60, '1943-04-06', 7),
		(1028, 'Os Miseráveis', 89.90, 7, '1862-01-01', 8),
		(1029, 'O Estrangeiro', 45.00, 15, '1942-01-01', 9),
		(1030, 'O Iluminado', 69.90, 19, '1977-01-28', 10);

SELECT * FROM tbl_livros

CREATE TABLE tbl_clientes (
	cod_cli INT,
	nome_completo VARCHAR (200) NOT NULL,
	email VARCHAR (200) UNIQUE NOT NULL,
	cpf VARCHAR (30) UNIQUE NOT NULL,
	data_cadastro DATE NOT NULL,
	PRIMARY KEY (cod_cli)
);

INSERT INTO tbl_clientes (cod_cli,nome_completo,email,cpf,data_cadastro)VALUES
	(1, 'Ana Clara Souza', 'ana.souza@email.com', '12345678901', '2026-01-15'),
	(2, 'Bruno Henrique Silva', 'bruno.silva@email.com', '23456789012', '2026-02-10'),
	(3, 'Carla Mendes Oliveira', 'carla.mendes@email.com', '34567890123', '2026-03-05'),
	(4, 'Daniel Costa Santos', 'daniel.costa@email.com', '45678901234', '2026-03-22'),
	(5, 'Eduarda Lima Ferreira', 'eduarda.lima@email.com', '56789012345', '2026-04-12'),
	(6, 'Felipe Rocha Martins', 'felipe.rocha@email.com', '67890123456', '2026-05-01'),
	(7, 'Gabriela Ribeiro Alves', 'gabriela.ribeiro@email.com', '78901234567', '2026-06-18'),
	(8, 'Lucas Martins Cardoso', 'lucas.cardoso@email.com', '89012345678', '2026-07-20'),
	(9, 'Mariana Nogueira Pinto', 'mariana.nogueira@email.com', '90123456789', '2026-08-11'),
	(10, 'Rafael Souza Ribeiro', 'rafael.ribeiro@email.com', '01234567890', '2026-09-02');

SELECT * FROM tbl_clientes

CREATE TABLE tbl_pedido (
	numero_pedido INT ,
	data_hora DATETIME NOT NULL,
	valor_total DECIMAL (10,2) NOT NULL,
	cod_cli INT,
	PRIMARY KEY (numero_pedido),
	FOREIGN KEY (cod_cli) REFERENCES tbl_clientes (cod_cli)

);

INSERT INTO tbl_pedido (numero_pedido,data_hora,valor_total,cod_cli) VALUES
	(501, '2026-09-01 10:15:00', 149.80, 1),
	(502, '2026-09-02 14:20:00', 89.50, 2),
	(503, '2026-09-03 09:45:00', 210.00, 3),
	(504, '2026-09-04 16:10:00', 45.90, 4),
	(505, '2026-09-05 11:30:00', 320.40, 5),
	(506, '2026-09-06 18:00:00', 79.90, 6),
	(507, '2026-09-07 13:25:00', 115.00, 7),
	(508, '2026-09-08 15:40:00', 95.30, 8),
	(509, '2026-09-09 10:05:00', 550.00, 9),
	(510, '2026-09-10 12:50:00', 189.90, 10);

SELECT * FROM tbl_pedido

CREATE TABLE tbl_livro_autor(
	isbn INT ,
	cod_autor INT NOT NULL,
	CONSTRAINT PK_LivroAutor PRIMARY KEY (cod_autor,isbn),
	FOREIGN KEY (isbn) REFERENCES tbl_livros(isbn),
	FOREIGN KEY (cod_autor) REFERENCES tbl_autores(cod_autor)
);

INSERT INTO tbl_livro_autor (isbn,cod_autor) VALUES
	(1001, 1),
	(1002, 2),
	(1003, 3),
	(1004, 4),
	(1005, 5),
	(1006, 6),
	(1007, 7),
	(1008, 8),
	(1009, 9),
	(1010, 10);

SELECT * FROM tbl_livro_autor


CREATE TABLE tbl_item_pedido (
	numero_pedido INT NOT NULL, 
	isbn INT NOT NULL,
	quantidade INT NOT NULL,
	preco_unitario DECIMAL (10,2) NOT NULL,
    CONSTRAINT PK_ItemPedido PRIMARY KEY (numero_pedido,isbn),
	FOREIGN KEY (numero_pedido) REFERENCES tbl_pedido (numero_pedido),
	FOREIGN KEY (isbn) REFERENCES tbl_livros(isbn)
);

INSERT INTO tbl_item_pedido (numero_pedido,isbn,quantidade,preco_unitario) VALUES
	(501, 1001, 2, 49.90),
	(502, 1002, 1, 45.00),
	(503, 1003, 3, 39.90),
	(504, 1004, 1, 52.50),
	(505, 1005, 4, 69.90),
	(506, 1006, 2, 42.00),
	(507, 1007, 1, 35.00),
	(508, 1008, 2, 44.90),
	(509, 1009, 5, 38.00),
	(510, 1010, 3, 29.90);