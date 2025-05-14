CREATE DATABASE PizzaShop;
USE PizzaShop;

CREATE TABLE Orders 
(
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    PizzaType VARCHAR(50),
    DeliveryOption VARCHAR(20),
    Quantity INT
);

INSERT INTO Orders (OrderID, CustomerName, PizzaType, DeliveryOption, Quantity) 
VALUES
(1, 'Alice Monroe', 'Margherita', 'Pickup', 2),
(2, 'Ben Carter', 'Pepperoni', 'Delivery', 1),
(3, 'Cara Daniels', 'Veggie', 'Dine-In', 3),
(4, 'Derek Wong', 'Hawaiian', 'Pickup', 2),
(5, 'Ella Zhang', 'Margherita', 'Delivery', 1),
(6, 'Finn Lopez', 'BBQ Chicken', 'Dine-In', 2),
(7, 'Grace Patel', 'Veggie', 'Pickup', 1),
(8, 'Harry Kim', 'Pepperoni', 'Delivery', 3),
(9, 'Ivy Ross', 'Margherita', 'Dine-In', 2),
(10, 'Jack Green', 'BBQ Chicken', 'Delivery', 2),
(11, 'Katie Hall', 'Hawaiian', 'Pickup', 1),
(12, 'Leo Brown', 'Veggie', 'Delivery', 4),
(13, 'Mona White', 'Pepperoni', 'Pickup', 1),
(14, 'Nina Gray', 'BBQ Chicken', 'Dine-In', 3),
(15, 'Omar Black', 'Margherita', 'Delivery', 2);

SELECT * FROM Orders;

#Selecting all delivery orders where quantity is greater than 2
SELECT CustomerName, PizzaType, DeliveryOption, Quantity
FROM Orders
WHERE DeliveryOption = 'Delivery' AND Quantity > 2;

#Getting total quantity of pizzas ordered per delivery option
SELECT DeliveryOption, SUM(Quantity) AS TotalPizzas
FROM Orders
GROUP BY DeliveryOption;

