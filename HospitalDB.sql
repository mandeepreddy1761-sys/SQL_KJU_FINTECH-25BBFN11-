CREATE DATABASE HospitalDB;

USE HospitalDB;

CREATE TABLE Patients (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(50),
    Age INT,
    Gender VARCHAR(10),
    Disease VARCHAR(50),
    Doctor VARCHAR(50),
    City VARCHAR(30)
);

INSERT INTO Patients (Name, Age, Gender, Disease, Doctor, City)
VALUES
('Rahul', 25, 'Male', 'Fever', 'Dr. Kumar', 'Bangalore'),
('Priya', 30, 'Female', 'Diabetes', 'Dr. Ravi', 'Mysore'),
('Arjun', 40, 'Male', 'Asthma', 'Dr. Anil', 'Chennai'),
('Sneha', 22, 'Female', 'Cold', 'Dr. Kumar', 'Bangalore'),
('Kiran', 35, 'Male', 'Heart Disease', 'Dr. Raj', 'Mumbai');

SELECT * FROM Patients;

SELECT Name, Disease FROM Patients;

SELECT * FROM Patients WHERE Age > 25;

SELECT * FROM Patients WHERE City = 'Bangalore';

SELECT * FROM Patients ORDER BY Age DESC;

UPDATE Patients
SET Disease = 'Recovered'
WHERE ID = 1;

SELECT * FROM Patients;

SELECT COUNT(*) AS Total_Patients FROM Patients;

SELECT AVG(Age) AS Average_Age FROM Patients;

SELECT MAX(Age) AS Highest_Age FROM Patients;

SELECT MIN(Age) AS Lowest_Age FROM Patients;

SELECT * FROM Patients WHERE Gender = 'Female';

SELECT * FROM Patients WHERE Doctor = 'Dr. Kumar';

DELETE FROM Patients WHERE ID = 5;

SELECT * FROM Patients;
