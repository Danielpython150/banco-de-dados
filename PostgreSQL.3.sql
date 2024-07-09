CREATE DATABASE MinhaBaseDeDados;

USE MinhaBaseDeDados;

CREATE TABLE Clientes (
    ClienteID INT PRIMARY KEY,
    Nome VARCHAR(50),
    Email VARCHAR(100)
);

CREATE TABLE Pedidos (
    PedidoID INT PRIMARY KEY,
    ClienteID INT,
    DataPedido DATE,
    ValorTotal DECIMAL(10, 2)
);

INSERT INTO Clientes (ClienteID, Nome, Email)
VALUES (1, 'João Silva', 'joao@email.com');

INSERT INTO Pedidos (PedidoID, ClienteID, DataPedido, ValorTotal)
VALUES (1001, 1, '2024-07-09', 150.00);

SELECT Pedidos.PedidoID, Pedidos.DataPedido, Pedidos.ValorTotal
FROM Pedidos
INNER JOIN Clientes ON Pedidos.ClienteID = Clientes.ClienteID
WHERE Clientes.Nome = 'João Silva';

