CREATE DATABASE HotelDB;

USE HotelDB;

CREATE TABLE Guests (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(50),
    RoomType VARCHAR(30),
    Days INT,
    Amount DECIMAL(10,2),
    City VARCHAR(30)
);

INSERT INTO Guests (Name, RoomType, Days, Amount, City)
VALUES
('Rahul', 'Deluxe', 3, 6000, 'Bangalore'),
('Priya', 'Single', 2, 3000, 'Mysore'),
('Arjun', 'Double', 5, 10000, 'Chennai'),
('Sneha', 'Deluxe', 4, 8000, 'Mumbai'),
('Kiran', 'Single', 1, 1500, 'Delhi');

SELECT * FROM Guests;

SELECT Name, RoomType FROM Guests;

SELECT * FROM Guests WHERE Amount > 5000;

SELECT * FROM Guests WHERE RoomType = 'Deluxe';

SELECT * FROM Guests ORDER BY Amount DESC;

UPDATE Guests
SET Amount = 7000
WHERE ID = 1;

SELECT * FROM Guests;

SELECT COUNT(*) AS Total_Guests FROM Guests;

SELECT AVG(Amount) AS Average_Amount FROM Guests;

SELECT MAX(Amount) AS Highest_Amount FROM Guests;

SELECT MIN(Amount) AS Lowest_Amount FROM Guests;

SELECT * FROM Guests WHERE Days >= 3;

SELECT * FROM Guests WHERE City = 'Bangalore';

DELETE FROM Guests WHERE ID = 5;

SELECT * FROM Guests;
