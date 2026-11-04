CREATE DATABASE PharmacyDB;

USE PharmacyDB;

CREATE TABLE Medicines (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    MedicineName VARCHAR(50),
    Company VARCHAR(50),
    Price DECIMAL(10,2),
    Quantity INT,
    Category VARCHAR(30)
);

INSERT INTO Medicines (MedicineName, Company, Price, Quantity, Category)
VALUES
('Paracetamol', 'Cipla', 50, 100, 'Tablet'),
('Cetirizine', 'Sun Pharma', 80, 50, 'Tablet'),
('Vitamin C', 'HealthKart', 120, 60, 'Supplement'),
('Cough Syrup', 'Dabur', 90, 40, 'Syrup'),
('Antacid', 'Abbott', 70, 80, 'Tablet');

SELECT * FROM Medicines;

SELECT MedicineName, Company FROM Medicines;

SELECT * FROM Medicines WHERE Price > 70;

SELECT * FROM Medicines WHERE Category = 'Tablet';

SELECT * FROM Medicines ORDER BY Price DESC;

UPDATE Medicines
SET Price = 60
WHERE ID = 1;

SELECT * FROM Medicines;

SELECT COUNT(*) AS Total_Medicines FROM Medicines;

SELECT AVG(Price) AS Average_Price FROM Medicines;

SELECT MAX(Price) AS Highest_Price FROM Medicines;

SELECT MIN(Price) AS Lowest_Price FROM Medicines;

SELECT * FROM Medicines WHERE Quantity > 50;

SELECT * FROM Medicines WHERE Company = 'Cipla';

DELETE FROM Medicines WHERE ID = 5;

SELECT * FROM Medicines;
