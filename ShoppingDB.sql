CREATE DATABASE ShoppingDB;

USE ShoppingDB;

CREATE TABLE Products (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    ProductName VARCHAR(50),
    Category VARCHAR(30),
    Price DECIMAL(10,2),
    Quantity INT,
    Brand VARCHAR(30)
);

INSERT INTO Products (ProductName, Category, Price, Quantity, Brand)
VALUES
('Laptop', 'Electronics', 50000, 10, 'Dell'),
('Mobile', 'Electronics', 20000, 15, 'Samsung'),
('Shoes', 'Fashion', 2500, 20, 'Nike'),
('Watch', 'Accessories', 5000, 12, 'Titan'),
('Shirt', 'Fashion', 1500, 25, 'Puma');

SELECT * FROM Products;

SELECT ProductName, Price FROM Products;

SELECT * FROM Products WHERE Price > 5000;

SELECT * FROM Products WHERE Category = 'Electronics';

SELECT * FROM Products ORDER BY Price DESC;

UPDATE Products
SET Price = 55000
WHERE ID = 1;

SELECT * FROM Products;

SELECT COUNT(*) AS Total_Products FROM Products;

SELECT AVG(Price) AS Average_Price FROM Products;

SELECT MAX(Price) AS Highest_Price FROM Products;

SELECT MIN(Price) AS Lowest_Price FROM Products;

SELECT * FROM Products WHERE Quantity > 10;

SELECT * FROM Products WHERE Brand = 'Nike';

DELETE FROM Products WHERE ID = 5;

SELECT * FROM Products;
