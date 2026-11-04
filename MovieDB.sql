CREATE DATABASE MovieDB;

USE MovieDB;

CREATE TABLE Movies (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    MovieName VARCHAR(50),
    Director VARCHAR(50),
    Genre VARCHAR(30),
    Rating DECIMAL(3,1),
    Language VARCHAR(30)
);

INSERT INTO Movies (MovieName, Director, Genre, Rating, Language)
VALUES
('Avatar', 'James Cameron', 'Action', 8.5, 'English'),
('Inception', 'Christopher Nolan', 'Sci-Fi', 8.8, 'English'),
('KGF', 'Prashanth Neel', 'Action', 8.2, 'Kannada'),
('RRR', 'Rajamouli', 'Drama', 8.0, 'Telugu'),
('Titanic', 'James Cameron', 'Romance', 7.9, 'English');

SELECT * FROM Movies;

SELECT MovieName, Director FROM Movies;

SELECT * FROM Movies WHERE Rating > 8.0;

SELECT * FROM Movies WHERE Genre = 'Action';

SELECT * FROM Movies ORDER BY Rating DESC;

UPDATE Movies
SET Rating = 9.0
WHERE ID = 1;

SELECT * FROM Movies;

SELECT COUNT(*) AS Total_Movies FROM Movies;

SELECT AVG(Rating) AS Average_Rating FROM Movies;

SELECT MAX(Rating) AS Highest_Rating FROM Movies;

SELECT MIN(Rating) AS Lowest_Rating FROM Movies;

SELECT * FROM Movies WHERE Language = 'English';

SELECT * FROM Movies WHERE Director = 'James Cameron';

DELETE FROM Movies WHERE ID = 5;

SELECT * FROM Movies;
