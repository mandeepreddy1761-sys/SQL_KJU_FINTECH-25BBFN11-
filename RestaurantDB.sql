CREATE DATABASE RestaurantDB;

USE RestaurantDB;

CREATE TABLE Orders (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    CustomerName VARCHAR(50),
    FoodItem VARCHAR(50),
    Category VARCHAR(30),
    Quantity INT,
    Price DECIMAL(10,2),
    City VARCHAR(30)
);

INSERT INTO Orders (CustomerName, FoodItem, Category, Quantity, Price, City)
VALUES
('Rahul', 'Pizza', 'Fast Food', 2, 500, 'Bangalore'),
('Priya', 'Burger', 'Fast Food', 3, 450, 'Mysore'),
('Arjun', 'Biryani', 'Main Course', 2, 600, 'Chennai'),
('Sneha', 'Dosa', 'South Indian', 4, 320, 'Mumbai'),
('Kiran', 'Pasta', 'Italian', 1, 250, 'Delhi');

SELECT * FROM Orders;

SELECT CustomerName, FoodItem FROM Orders;

SELECT * FROM Orders WHERE Price > 300;

SELECT * FROM Orders WHERE Category = 'Fast Food';

SELECT * FROM Orders ORDER BY Price DESC;

UPDATE Orders
SET Price = 600
WHERE ID = 1;

SELECT * FROM Orders;

SELECT COUNT(*) AS Total_Orders FROM Orders;

SELECT AVG(Price) AS Average_Price FROM Orders;

SELECT MAX(Price) AS Highest_Price FROM Orders;

SELECT MIN(Price) AS Lowest_Price FROM Orders;

SELECT SUM(Quantity) AS Total_Quantity FROM Orders;

SELECT * FROM Orders WHERE City = 'Bangalore';

SELECT * FROM Orders WHERE Quantity >= 2;

DELETE FROM Orders WHERE ID = 5;

SELECT * FROM Orders;
