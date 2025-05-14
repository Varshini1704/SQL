CREATE DATABASE ProductDB;
USE ProductDB;

CREATE TABLE Products 
(
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Category VARCHAR(50),
    Price DECIMAL(8,2),
    StockQuantity INT
);

INSERT INTO Products (ProductID, ProductName, Category, Price, StockQuantity) 
VALUES
(1, 'Laptop', 'Electronics', 799.99, 120),
(2, 'Coffee Maker', 'Appliances', 45.50, 300),
(3, 'T-shirt', 'Clothing', 19.99, 500),
(4, 'Bluetooth Speaker', 'Electronics', 129.99, 80),
(5, 'Sneakers', 'Footwear', 59.99, 150),
(6, 'Headphones', 'Electronics', 89.99, 200),
(7, 'Air Conditioner', 'Appliances', 299.99, 30),
(8, 'Smartwatch', 'Electronics', 199.99, 250),
(9, 'Yoga Mat', 'Sports', 24.99, 180),
(10, 'Coffee Mug', 'Kitchenware', 12.99, 450);

SELECT * FROM Products;

ALTER TABLE Products
ADD Manufacturer VARCHAR(100),
ADD Discount INT;

UPDATE Products
SET Manufacturer = 'Dell', Discount = 10
WHERE ProductID = 1;

UPDATE Products
SET Manufacturer = 'Philips', Discount = 5
WHERE ProductID = 2;

UPDATE Products
SET Manufacturer = 'Nike', Discount = 15
WHERE ProductID = 3;

UPDATE Products
SET Manufacturer = 'Sony', Discount = 12
WHERE ProductID = 4;

UPDATE Products
SET Manufacturer = 'Samsung', Discount = 20
WHERE ProductID = 5;

UPDATE Products
SET Manufacturer = 'Apple', Discount = 8
WHERE ProductID = 6;

UPDATE Products
SET Manufacturer = 'Adidas', Discount = 18
WHERE ProductID = 7;

UPDATE Products
SET Manufacturer = 'Bosch', Discount = 6
WHERE ProductID = 8;

UPDATE Products
SET Manufacturer = 'LG', Discount = 10
WHERE ProductID = 9;

UPDATE Products
SET Manufacturer = 'Under Armour', Discount = 10
WHERE ProductID = 10;

SELECT * FROM Products;
