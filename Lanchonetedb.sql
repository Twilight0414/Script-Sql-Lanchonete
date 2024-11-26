-- Criação do Banco de Dados
CREATE DATABASE Lanchonetedb;
USE Lanchonetedb;
-- Tabela Cliente
CREATE TABLE Cliente (
 CPF CHAR(11) PRIMARY KEY,
 Nome VARCHAR(100) NOT NULL,
 CartaoCredito VARCHAR(16)
);
-- Tabela Lanchonete
CREATE TABLE Lanchonete (
 Codigo INT PRIMARY KEY AUTO_INCREMENT,
 Nome VARCHAR(100) NOT NULL,
 PercComissao DECIMAL(5,2) NOT NULL CHECK (PercComissao >= 0 AND
PercComissao <= 100)
);
-- Tabela Produto
CREATE TABLE Produto (
 CodLanchonete INT,
 CodProduto INT,
 Nome VARCHAR(100) NOT NULL,
 Preco DECIMAL(10,2) NOT NULL CHECK (Preco > 0),
 PRIMARY KEY (CodLanchonete, CodProduto),
 FOREIGN KEY (CodLanchonete) REFERENCES Lanchonete(Codigo)
);
-- Tabela Pedido
CREATE TABLE Pedido (
 Numero INT PRIMARY KEY AUTO_INCREMENT,
 DataHora DATETIME NOT NULL,
 Rua VARCHAR(100) NOT NULL,
 NumeroEnd VARCHAR(10) NOT NULL,
 CodLanchonete INT NOT NULL,
 CPF CHAR(11) NOT NULL,
 FOREIGN KEY (CodLanchonete) REFERENCES Lanchonete(Codigo),
 FOREIGN KEY (CPF) REFERENCES Cliente(CPF)
);
-- Tabela Tem
CREATE TABLE Tem (
 NumPedido INT NOT NULL,
 CodLanchonete INT NOT NULL,
 CodProduto INT NOT NULL,
 Quantidade INT NOT NULL CHECK (Quantidade > 0),
 PRIMARY KEY (NumPedido, CodLanchonete, CodProduto),
 FOREIGN KEY (NumPedido) REFERENCES Pedido(Numero),
 FOREIGN KEY (CodLanchonete, CodProduto) REFERENCES
Produto(CodLanchonete, CodProduto)
);
--Exemplos de Inserts--
-- Inserindo um cliente
INSERT INTO Cliente (CPF, Nome, CartaoCredito)
VALUES ('12345678901', Thales Santos', '9567456384562956');
-- Inserindo uma lanchonete
INSERT INTO Lanchonete (Codigo, Nome, PercComissao)
VALUES (1, 'Lanchonete da Sol', 10.00);
-- Inserindo um produto
INSERT INTO Produto (CodLanchonete, CodProduto, Nome, Preco)
VALUES (1, 1, 'Hambúrguer', 15.00);
-- Inserindo um pedido
INSERT INTO Pedido (Numero, DataHora, Rua, NumeroEnd, CodLanchonete,
CPF)
VALUES (1, '2024-11-24 12:30:00', 'Av. Brasil', '100', 1, '12345678901');
-- Inserindo itens no pedido
INSERT INTO Tem (NumPedido, CodLanchonete, CodProduto, Quantidade)
VALUES (1, 1, 1, 2); -- 2 Hambúrgueres no pedido 1
-Selects de EXEMPLO
-- Mosrar todos os clientes cadastrados
SELECT * FROM Cliente;
-- Mostrar todas as lanchonetes
SELECT * FROM Lanchonete;
-- Exibir todos os produtos disponíveis
SELECT * FROM Produto;
-- Consultar todos os pedidos que foram realizados
SELECT * FROM Pedido;
-- Verificar os itens associados a cada pedido
SELECT * FROM Tem;
