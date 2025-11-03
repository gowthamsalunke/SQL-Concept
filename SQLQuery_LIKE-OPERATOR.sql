CREATE TABLE Supplier (
    SupplierID CHAR(2) PRIMARY KEY,
    Name VARCHAR(50),
    Address VARCHAR(100)
);
INSERT INTO Supplier (SupplierID, Name, Address)
VALUES
    ('S1', 'Paragon Suppliers', '21-3, Okhla, Delhi'),
    ('S2', 'Mango Nation', '21, Faridabad, Haryana'),
    ('S3', 'Canadian Biz', '6/7, Okhla Phase II, Delhi'),
    ('S4', 'Caravan Traders', '2-A, Pitampura, Delhi'),
    ('S5', 'Harish and Sons', 'Gurgaon, NCR'),
    ('S6', 'Om Suppliers', '2/1, Faridabad, Haryana');

    select * from Supplier


    --Retrieve SupplierID, Name, and Address from suppliers table, where supplier name starts form k.

    select SupplierID, Name, Address
    from Supplier
    where Name Like 'Ca%';

    --Retrieve entire table, where address contains OKHLA.

    SELECT *
FROM Supplier
WHERE Address LIKE '%Okhla%';

--Retrieve SupplierID, Name and Address of supplier whose name contains "ango" in second substring.
select SupplierID, Name, Address
from Supplier
where Name like '_ango%';

--Example 4: Using LIKE with AND for Complex Conditions
--Retrieve suppliers from Delhi with names starting with "C":

SELECT SupplierID, Name, Address
FROM Supplier
WHERE Address LIKE '%Delhi%' AND Name LIKE 'C%';

--Example 5: Using NOT LIKE for Exclusion
--To retrieve all suppliers whose name does not contain "Mango"

SELECT SupplierID, Name, Address
FROM Supplier
WHERE Name NOT LIKE '%Mango%';

--Database master