CREATE DATABASE LibraryDB;

USE LibraryDB;

CREATE TABLE Books (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    BookName VARCHAR(100),
    Author VARCHAR(50),
    Price DECIMAL(10,2),
    Quantity INT,
    Category VARCHAR(30)
);

INSERT INTO Books (BookName, Author, Price, Quantity, Category)
VALUES
('Wings of Fire', 'APJ Abdul Kalam', 250, 10, 'Biography'),
('Atomic Habits', 'James Clear', 400, 12, 'Self Help'),
('The Alchemist', 'Paulo Coelho', 300, 5, 'Fiction'),
('Rich Dad Poor Dad', 'Robert Kiyosaki', 350, 8, 'Finance'),
('Think Like a Monk', 'Jay Shetty', 280, 7, 'Self Help');

SELECT * FROM Books;

SELECT BookName, Author FROM Books;

SELECT * FROM Books WHERE Price > 300;

SELECT * FROM Books WHERE Category = 'Self Help';

SELECT * FROM Books ORDER BY Price DESC;

UPDATE Books
SET Price = 450
WHERE ID = 2;

SELECT * FROM Books;

SELECT COUNT(*) AS Total_Books FROM Books;

SELECT AVG(Price) AS Average_Price FROM Books;

SELECT MAX(Price) AS Highest_Price FROM Books;

SELECT MIN(Price) AS Lowest_Price FROM Books;

SELECT * FROM Books WHERE Quantity > 5;

SELECT * FROM Books WHERE Author = 'James Clear';

DELETE FROM Books WHERE ID = 5;

SELECT * FROM Books;
