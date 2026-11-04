CREATE DATABASE VehicleDB;

USE VehicleDB;

CREATE TABLE Vehicles (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    OwnerName VARCHAR(50),
    VehicleName VARCHAR(50),
    Brand VARCHAR(30),
    Price DECIMAL(10,2),
    City VARCHAR(30)
);

INSERT INTO Vehicles (OwnerName, VehicleName, Brand, Price, City)
VALUES
('Rahul', 'Swift', 'Maruti', 700000, 'Bangalore'),
('Priya', 'Creta', 'Hyundai', 1200000, 'Mysore'),
('Arjun', 'Fortuner', 'Toyota', 3500000, 'Chennai'),
('Sneha', 'Nexon', 'Tata', 900000, 'Mumbai'),
('Kiran', 'Thar', 'Mahindra', 1500000, 'Delhi');

SELECT * FROM Vehicles;

SELECT OwnerName, VehicleName FROM Vehicles;

SELECT * FROM Vehicles WHERE Price > 1000000;

SELECT * FROM Vehicles WHERE Brand = 'Tata';

SELECT * FROM Vehicles ORDER BY Price DESC;

UPDATE Vehicles
SET Price = 750000
WHERE ID = 1;

SELECT * FROM Vehicles;

SELECT COUNT(*) AS Total_Vehicles FROM Vehicles;

SELECT AVG(Price) AS Average_Price FROM Vehicles;

SELECT MAX(Price) AS Highest_Price FROM Vehicles;

SELECT MIN(Price) AS Lowest_Price FROM Vehicles;

SELECT * FROM Vehicles WHERE City = 'Bangalore';

SELECT * FROM Vehicles WHERE Brand = 'Toyota';

DELETE FROM Vehicles WHERE ID = 5;

SELECT * FROM Vehicles;
