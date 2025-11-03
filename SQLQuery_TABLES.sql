CREATE TABLE Customer(
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    LastName VARCHAR(50),
    Country VARCHAR(50),
    Age INT CHECK (Age >= 0 AND Age <= 99),
    Phone VARCHAR(10)
);

select * from Customer

INSERT INTO Customer (CustomerID, CustomerName, LastName, Country, Age, Phone)
VALUES (1, 'Sai', 'Ram', 'Shirdi','23','xxxxxxxxxx'),
       (2, 'Kuladevth ', 'Khandoba', 'jejuri','21','xxxxxxxxxx'),
       (3, 'Shree', 'Ganesha', 'Kalasa','24','xxxxxxxxxx'),
       (4, 'Shree', 'Subrmanaya', 'Kukki','21','xxxxxxxxxx'),
       (5, 'Shree', 'Mahadeva', 'Heaven','22','xxxxxxxxxx');

select * from Customer

SELECT CustomerID, CustomerName
INTO SubTable
FROM Customer;

select * from SubTable



CREATE DATABASE NewCafe;

USE NewCafe;

CREATE TABLE categories (
    CategoryID INT NOT NULL PRIMARY KEY, 
    CategoryName NVARCHAR(50) NOT NULL,
    ItemDescription NVARCHAR(50) NOT NULL
);

INSERT INTO categories (CategoryID, CategoryName, ItemDescription)
VALUES
(1, 'Beverages', 'Soft Drinks'),
(2, 'Condiments', 'Sweet and Savory Sauces'), 
(3, 'Confections', 'Sweet Breads');

SELECT * FROM categories;

DROP TABLE categories;

DROP TABLE IF EXISTS categories;

--Database NewCafe