CREATE DATABASE BankDB;

USE BankDB;

CREATE TABLE Accounts (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    CustomerName VARCHAR(50),
    AccountType VARCHAR(20),
    Balance DECIMAL(10,2),
    City VARCHAR(30)
);

INSERT INTO Accounts (CustomerName, AccountType, Balance, City)
VALUES
('Rahul', 'Savings', 25000, 'Bangalore'),
('Priya', 'Current', 50000, 'Mysore'),
('Arjun', 'Savings', 15000, 'Chennai'),
('Sneha', 'Savings', 35000, 'Mumbai'),
('Kiran', 'Current', 40000, 'Delhi');

SELECT * FROM Accounts;

SELECT CustomerName, AccountType FROM Accounts;

SELECT * FROM Accounts WHERE Balance > 20000;

SELECT * FROM Accounts WHERE AccountType = 'Savings';

SELECT * FROM Accounts ORDER BY Balance DESC;

UPDATE Accounts
SET Balance = Balance + 5000
WHERE ID = 1;

SELECT * FROM Accounts;

UPDATE Accounts
SET Balance = Balance - 2000
WHERE ID = 2;

SELECT * FROM Accounts;

SELECT COUNT(*) AS Total_Accounts FROM Accounts;

SELECT SUM(Balance) AS Total_Balance FROM Accounts;

SELECT AVG(Balance) AS Average_Balance FROM Accounts;

SELECT MAX(Balance) AS Highest_Balance FROM Accounts;

SELECT MIN(Balance) AS Lowest_Balance FROM Accounts;

SELECT * FROM Accounts WHERE City = 'Bangalore';

DELETE FROM Accounts WHERE ID = 5;

SELECT * FROM Accounts;
