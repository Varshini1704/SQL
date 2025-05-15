CREATE DATABASE EmployeesDB;
USE EmployeesDB;

Create Table Employees 
(
    Id Int Primary Key,
    Name Varchar(100),
    Department Varchar(50),
    Salary Decimal(10, 2),
    Hire_Date Date
);

Insert Into Employees (Id, Name, Department, Salary, Hire_Date) 
Values
(1, 'Alice', 'HR', 50000, '2020-01-15'),
(2, 'Bob', 'IT', 60000, '2019-03-12'),
(3, 'Charlie', 'Finance', 55000, '2018-07-19'),
(4, 'David', 'Marketing', 52000, '2021-11-05'),
(5, 'Eve', 'IT', 62000, '2022-02-23'),
(6, 'Frank', 'HR', 48000, '2017-09-30'),
(7, 'Grace', 'Finance', 57000, '2020-08-14'),
(8, 'Heidi', 'Marketing', 51000, '2021-01-10'),
(9, 'Ivan', 'IT', 63000, '2016-04-25'),
(10, 'Judy', 'HR', 49000, '2023-05-01');

SELECT * FROM Employees;

DELETE FROM Employees WHERE Department = 'HR';
SELECT * FROM Employees;

DROP TABLE Employees;
#After this, the employees table no longer exists in the database.