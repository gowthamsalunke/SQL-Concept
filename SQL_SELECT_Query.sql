--SQL SELECT Query

--Syntax
--SELECT column1,column2.... FROM table_name;

CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    LastName VARCHAR(50),
    Country VARCHAR(50),
    Age VARCHAR (2),
    Phone VARCHAR(10) );

INSERT INTO Customer (CustomerID, CustomerName, LastName, Country, Age, Phone)
VALUES   (1, 'Liam', 'Smith', 'USA', 23, 'xxxxxxxxxx'),
                (2, 'Sophia', 'Miller', 'USA', 21, 'xxxxxxxxxx'),
                (3, 'Akira', 'Tanaka', 'Japan', 24, 'xxxxxxxxxx'),
                (4, 'Carlos', 'Hernandez', 'USA', 21, 'xxxxxxxxxx'),
                (5, 'Isabella', 'Rossi', 'Italy', 22, 'xxxxxxxxxx');


select * from Customer

--Example 1: Select Specific Columns( fetch only CustomerName and LastName for each record.)

select  CustomerName,LastName from Customer


--Example 2:SELECT Statement with WHERE Clause(filter customers who are 21 years old)

select CustomerName from Customer
where Age = '21'

--Example 3: SELECT with GROUP BY Clause (we will count the number of customers from each country.)

SELECT Country, COUNT(*) AS customer_count
FROM Customer
GROUP BY Country;

--Example 4: SELECT with DISTINCT Clause (fetch unique countries from the Customer table.)

select DISTINCT Country from Customer

--Example 5: SELECT Statement with HAVING Clause
--The HAVING clause is used to filter results after applying GROUP BY. In this example, we will find countries that have 2 or more customers in the Customer table.

SELECT Country, COUNT(*) AS customer_count
FROM Customer
GROUP BY Country
HAVING COUNT(*) >= 2;

--Example 6: SELECT Statement with ORDER BY clause
--we will use SELECT Statement with ORDER BY clause. Here, Sort results by Age in descending order.

SELECT * FROM Customer ORDER BY Age DESC;  



