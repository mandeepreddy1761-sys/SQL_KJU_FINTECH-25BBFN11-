CREATE DATABASE SportsDB;

USE SportsDB;

CREATE TABLE Players (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(50),
    Age INT,
    Sport VARCHAR(30),
    Team VARCHAR(30),
    City VARCHAR(30)
);

INSERT INTO Players (Name, Age, Sport, Team, City)
VALUES
('Rahul', 22, 'Cricket', 'India', 'Bangalore'),
('Priya', 21, 'Badminton', 'Eagles', 'Mysore'),
('Arjun', 24, 'Football', 'Lions', 'Chennai'),
('Sneha', 20, 'Tennis', 'Stars', 'Mumbai'),
('Kiran', 23, 'Cricket', 'Warriors', 'Delhi');

SELECT * FROM Players;

SELECT Name, Sport FROM Players;

SELECT * FROM Players WHERE Age > 21;

SELECT * FROM Players WHERE Sport = 'Cricket';

SELECT * FROM Players ORDER BY Age DESC;

UPDATE Players
SET Team = 'Champions'
WHERE ID = 1;

SELECT * FROM Players;

SELECT COUNT(*) AS Total_Players FROM Players;

SELECT AVG(Age) AS Average_Age FROM Players;

SELECT MAX(Age) AS Highest_Age FROM Players;

SELECT MIN(Age) AS Lowest_Age FROM Players;

SELECT * FROM Players WHERE City = 'Bangalore';

SELECT * FROM Players WHERE Team = 'Lions';

DELETE FROM Players WHERE ID = 5;

SELECT * FROM Players;
