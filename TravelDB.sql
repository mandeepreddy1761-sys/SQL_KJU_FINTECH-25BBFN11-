CREATE DATABASE TravelDB;

USE TravelDB;

CREATE TABLE Bookings (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    CustomerName VARCHAR(50),
    Destination VARCHAR(50),
    Transport VARCHAR(30),
    Days INT,
    Amount DECIMAL(10,2)
);

INSERT INTO Bookings (CustomerName, Destination, Transport, Days, Amount)
VALUES
('Rahul', 'Goa', 'Flight', 5, 15000),
('Priya', 'Manali', 'Train', 7, 12000),
('Arjun', 'Kerala', 'Bus', 4, 8000),
('Sneha', 'Delhi', 'Flight', 3, 10000),
('Kiran', 'Mumbai', 'Train', 2, 5000);

SELECT * FROM Bookings;

SELECT CustomerName, Destination FROM Bookings;

SELECT * FROM Bookings WHERE Amount > 10000;

SELECT * FROM Bookings WHERE Transport = 'Flight';

SELECT * FROM Bookings ORDER BY Amount DESC;

UPDATE Bookings
SET Amount = 18000
WHERE ID = 1;

SELECT * FROM Bookings;

SELECT COUNT(*) AS Total_Bookings FROM Bookings;

SELECT AVG(Amount) AS Average_Amount FROM Bookings;

SELECT MAX(Amount) AS Highest_Amount FROM Bookings;

SELECT MIN(Amount) AS Lowest_Amount FROM Bookings;

SELECT * FROM Bookings WHERE Days >= 4;

SELECT * FROM Bookings WHERE Destination = 'Goa';

DELETE FROM Bookings WHERE ID = 5;

SELECT * FROM Bookings;
