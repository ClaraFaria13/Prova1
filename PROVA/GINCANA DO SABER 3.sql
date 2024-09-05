CREATE DATABASE pedidos;
USE pedidos;

CREATE TABLE Clientes (
	ID_Cliente int PRIMARY KEY,
    Nome VARCHAR(50),
    Email VARCHAR(50),
    Telefone int
);

CREATE TABLE Pedidos (
	ID_Pedido int PRIMARY KEY,
    ID_Cliente int,
    Data_Pedido int,
    Total int
);

INSERT INTO Clientes (ID_Cliente, Nome, Email, Telefone) VALUES (
	'1', 'Alice Souza', 'alice.souza@example.com', '11999998888'
    '2', 'Bruno Lima', 'bruno.lima@example.com', '11999998888'
    '3', 'Carla Santos', 'carla.santos@example.com', '11999998888'
    '4', 'Daniela Oliveira', 'daniela.oliveira@example.com', '11999998888'
    '5', 'Eduardo Pereira', 'eduardo.pereira@example.com', '11999998888'
);

INSERT INTO Pedidos (ID_Pedido, ID_Cliente, Data_Pedido,Total) VALUES (
	'1', '1', '2024-08-01', '250.00'
    '2', '2', '2024-08-03', '150.00'
    '3', '3', '2024-08-05', '300.00'
    '4', '4', '2024-08-07', '450.00'
    '5', '5', '2024-08-09', '200.00'
);

---Q1---

SELECT Nome.Nome, Total.Total
FROM Clientes
JOIN Pedidos ON ID_Clientes = ID_Pedidos.ID_Pedidos;

---Q3---
SELECT Email.Email, Data_Pedido
FROM Clientes
JOIN Pedidos ON ID_Pedido.ID_Pedido = Data_Pedido.ID_Pedido;