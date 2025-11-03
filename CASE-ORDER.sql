CREATE TABLE demo_table(
ID int,
NAME VARCHAR(20),
APPLE int,
ORANGE int);

INSERT INTO demo_table VALUES
(1, 'Romy', 45, 7),
(2, 'Rinkle', 20, 25),
(3,'Shalini', 22, 29),
(4, 'Akanksha',50, 55),
(5,'Ayushi', 40, 13);

Select * FROM demo_table;

--Sorting by the Lowest Value of 'APPLE' and 'ORANGE' Columns
--To sort the records by the lowest value between the 'APPLE' and 'ORANGE' columns, we can use the CASE statement inside the ORDER BY clause. Here's how to implement it:


SELECT * FROM demo_table
ORDER BY CASE  
          WHEN  APPLE< ORANGE THEN APPLE
          ELSE ORANGE
        END

        --Database MAster