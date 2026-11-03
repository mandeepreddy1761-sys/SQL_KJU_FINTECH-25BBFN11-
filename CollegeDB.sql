CREATE DATABASE CollegeDB;

USE CollegeDB;

CREATE TABLE Students (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(50),
    Age INT,
    Course VARCHAR(30),
    Marks INT,
    City VARCHAR(30)
);

INSERT INTO Students (Name, Age, Course, Marks, City)
VALUES
('Rahul', 20, 'BBA', 85, 'Bangalore'),
('Priya', 19, 'BCA', 90, 'Mysore'),
('Arjun', 21, 'BBA', 75, 'Chennai'),
('Sneha', 20, 'BCom', 88, 'Bangalore'),
('Kiran', 19, 'BCA', 65, 'Mumbai');

SELECT * FROM Students;

SELECT Name, Course FROM Students;

SELECT * FROM Students WHERE Marks > 80;

SELECT * FROM Students WHERE City = 'Bangalore';

SELECT * FROM Students ORDER BY Marks DESC;

UPDATE Students
SET Marks = 95
WHERE ID = 1;

SELECT * FROM Students;

SELECT COUNT(*) AS Total_Students FROM Students;

SELECT AVG(Marks) AS Average_Marks FROM Students;

SELECT MAX(Marks) AS Highest_Marks FROM Students;

SELECT MIN(Marks) AS Lowest_Marks FROM Students;

SELECT * FROM Students WHERE Age >= 20;

SELECT * FROM Students WHERE Course = 'BBA';

DELETE FROM Students WHERE ID = 5;

SELECT * FROM Students;
