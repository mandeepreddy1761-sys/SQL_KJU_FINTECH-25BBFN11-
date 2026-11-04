CREATE DATABASE SchoolDB;

USE SchoolDB;

CREATE TABLE SchoolStudents (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(50),
    Class INT,
    Section VARCHAR(5),
    Marks INT,
    City VARCHAR(30)
);

INSERT INTO SchoolStudents (Name, Class, Section, Marks, City)
VALUES
('Amit', 10, 'A', 85, 'Bangalore'),
('Neha', 9, 'B', 90, 'Mysore'),
('Ravi', 10, 'A', 75, 'Chennai'),
('Anjali', 8, 'C', 88, 'Mumbai'),
('Vikram', 9, 'B', 65, 'Delhi');

SELECT * FROM SchoolStudents;

SELECT Name, Class FROM SchoolStudents;

SELECT * FROM SchoolStudents WHERE Marks > 80;

SELECT * FROM SchoolStudents WHERE Class = 10;

SELECT * FROM SchoolStudents ORDER BY Marks DESC;

UPDATE SchoolStudents
SET Marks = 95
WHERE ID = 1;

SELECT * FROM SchoolStudents;

SELECT COUNT(*) AS Total_Students FROM SchoolStudents;

SELECT AVG(Marks) AS Average_Marks FROM SchoolStudents;

SELECT MAX(Marks) AS Highest_Marks FROM SchoolStudents;

SELECT MIN(Marks) AS Lowest_Marks FROM SchoolStudents;

SELECT * FROM SchoolStudents WHERE City = 'Bangalore';

SELECT * FROM SchoolStudents WHERE Section = 'B';

DELETE FROM SchoolStudents WHERE ID = 5;

SELECT * FROM SchoolStudents;
