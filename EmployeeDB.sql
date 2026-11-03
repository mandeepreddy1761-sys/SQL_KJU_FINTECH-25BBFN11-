CREATE DATABASE EmployeeDB;

USE EmployeeDB;

CREATE TABLE Employees (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(50),
    Age INT,
    Department VARCHAR(30),
    Salary DECIMAL(10,2),
    City VARCHAR(30)
);

INSERT INTO Employees (Name, Age, Department, Salary, City)
VALUES
('Rahul', 25, 'HR', 30000, 'Bangalore'),
('Priya', 24, 'Finance', 45000, 'Mysore'),
('Arjun', 28, 'IT', 55000, 'Chennai'),
('Sneha', 26, 'Marketing', 40000, 'Mumbai'),
('Kiran', 30, 'IT', 60000, 'Delhi');

SELECT * FROM Employees;

SELECT Name, Department FROM Employees;

SELECT * FROM Employees WHERE Salary > 40000;

SELECT * FROM Employees WHERE Department = 'IT';

SELECT * FROM Employees ORDER BY Salary DESC;

UPDATE Employees
SET Salary = Salary + 5000
WHERE ID = 1;

SELECT * FROM Employees;

SELECT COUNT(*) AS Total_Employees FROM Employees;

SELECT AVG(Salary) AS Average_Salary FROM Employees;

SELECT MAX(Salary) AS Highest_Salary FROM Employees;

SELECT MIN(Salary) AS Lowest_Salary FROM Employees;

SELECT * FROM Employees WHERE Age >= 25;

SELECT * FROM Employees WHERE City = 'Bangalore';

DELETE FROM Employees WHERE ID = 5;

SELECT * FROM Employees;
