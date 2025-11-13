CREATE TABLE Customer1 (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    LastName VARCHAR(50),
    Country VARCHAR(50),
    Age INT,
    Phone VARCHAR(15)
);

-- Insert sample data
INSERT INTO Customer1 (CustomerID, CustomerName, LastName, Country, Age, Phone)
VALUES 

(1, 'Liam', 'Brown', 'United Kingdom', 25, '441234567890'),
(2, 'Sofia', 'Martinez', 'Spain', 23, '341234567890'),
(3, 'Akira', 'Tanaka', 'Japan', 26, '811234567890'),
(4, 'Hans', 'Müller', 'Germany', 27, '491234567890'),
(5, 'Olivia', 'Dubois', 'France', 24, '331234567890');

SELECT * FROM Customer1

--Example 1: Update Single Column Using UPDATE Statement
--We have a Customer table and we want to Update the CustomerName where the Age is 23

update Customer1
SET CustomerName = 'Isabella' 
WHERE Age = 23;


--Example 2: Updating Multiple Columns using UPDATE Statement
--We need to update both the CustomerName and Country for a specific CustomerID.


UPDATE Customer 
SET CustomerName = 'John', 
Country = 'Spain' 
WHERE CustomerID = 1;

select * from Customer1

