CREATE DATABASE Library_Management;
USE Library_Management;

CREATE TABLE Category 
(
    CategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(100)
);

INSERT INTO Category (CategoryID, CategoryName) 
VALUES
(1, 'Fiction'),
(2, 'Fantasy'),
(3, 'Dystopian'),
(4, 'Classic'),
(5, 'Science Fiction');

SELECT * FROM Category;

CREATE TABLE Book 
(
    BookID INT PRIMARY KEY,
    Title VARCHAR(255),
    Author VARCHAR(255),
    YearPublished INT,
    AvailableCopies INT,
    CategoryID INT,
    FOREIGN KEY (CategoryID) REFERENCES Category(CategoryID)
);

INSERT INTO Book (BookID, Title, Author, YearPublished, AvailableCopies, CategoryID) 
VALUES
(1, '1984', 'George Orwell', 1949, 5, 3),
(2, 'The Hobbit', 'J.R.R. Tolkien', 1937, 3, 2),
(3, 'To Kill a Mockingbird', 'Harper Lee', 1960, 4, 1),
(4, 'Brave New World', 'Aldous Huxley', 1932, 2, 5),
(5, 'The Great Gatsby', 'F. Scott Fitzgerald', 1925, 0, 4);

SELECT * FROM Book;

SELECT 
    B.BookID,
    B.Title,
    B.Author,
    B.YearPublished,
    B.AvailableCopies,
    C.CategoryName
FROM 
    Book B
JOIN 
    Category C ON B.CategoryID = C.CategoryID;
