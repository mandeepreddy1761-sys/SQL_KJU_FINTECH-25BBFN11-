CREATE DATABASE MobileDB;

USE MobileDB;

CREATE TABLE Mobiles (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    ModelName VARCHAR(50),
    Brand VARCHAR(30),
    RAM INT,
    Price DECIMAL(10,2),
    Storage INT
);

INSERT INTO Mobiles (ModelName, Brand, RAM, Price, Storage)
VALUES
('iPhone 15', 'Apple', 6, 60000, 128),
('Galaxy S24', 'Samsung', 8, 75000, 256),
('Nord 4', 'OnePlus', 8, 30000, 128),
('Edge 50', 'Motorola', 12, 35000, 256),
('Redmi Note 13', 'Xiaomi', 8, 18000, 128);

SELECT * FROM Mobiles;

SELECT ModelName, Brand FROM Mobiles;

SELECT * FROM Mobiles WHERE Price > 30000;

SELECT * FROM Mobiles WHERE Brand = 'Samsung';

SELECT * FROM Mobiles ORDER BY Price DESC;

UPDATE Mobiles
SET Price = 55000
WHERE ID = 1;

SELECT * FROM Mobiles;

SELECT COUNT(*) AS Total_Mobiles FROM Mobiles;

SELECT AVG(Price) AS Average_Price FROM Mobiles;

SELECT MAX(Price) AS Highest_Price FROM Mobiles;

SELECT MIN(Price) AS Lowest_Price FROM Mobiles;

SELECT * FROM Mobiles WHERE RAM >= 8;

SELECT * FROM Mobiles WHERE Storage = 128;

DELETE FROM Mobiles WHERE ID = 5;

SELECT * FROM Mobiles;
