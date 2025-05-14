CREATE DATABASE GroceriesDB;
USE GroceriesDB;

CREATE TABLE Groceries 
(
    Item_Id INT PRIMARY KEY,
    Grocery_Name VARCHAR(50),
    Grocery_Category VARCHAR(50),
    Cost INT,
    Availability INT
);

INSERT INTO Groceries (Item_Id, Grocery_Name, Grocery_Category, Cost, Availability) 
VALUES
(1001, 'carrot', 'vegetable', 100, 120),
(1002, 'beetroot', 'vegetable', 120, 83),
(1003, 'apple', 'fruit', 190, 7),
(1004, 'banana', 'fruit', 60, 200),
(1005, 'broccoli', 'vegetable', 150, 50),
(1006, 'spinach', 'vegetable', 80, 120),
(1007, 'orange', 'fruit', 120, 90),
(1008, 'tomato', 'vegetable', 70, 150),
(1009, 'potato', 'vegetable', 40, 300),
(1010, 'onion', 'vegetable', 50, 180),
(1011, 'garlic', 'vegetable', 130, 60),
(1012, 'lettuce', 'vegetable', 90, 100),
(1013, 'pear', 'fruit', 110, 80),
(1014, 'mango', 'fruit', 150, 40),
(1015, 'strawberry', 'fruit', 250, 30);

SELECT * FROM Groceries;