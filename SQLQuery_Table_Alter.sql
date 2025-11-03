DROP TABLE IF EXISTS Student;

CREATE TABLE Student (
  id INT PRIMARY KEY,
  name VARCHAR(50),
  age INT,
  email VARCHAR(50),
  phone VARCHAR(20)
);

INSERT INTO Student (id, name, age, email, phone) 
VALUES 
(1, 'Amit', 20, 'amit@gmail.com', '9999999999'),
(2, 'Rahul', 22, 'rahul@yahoo.com', '8888888888'),
(3, 'Priya', 21, 'priya@hotmail.com', '7777777777'),
(4, 'Sonia', 23, 'sonia@gmail.com', '6666666666'),
(5, 'Kiran', 19, 'kiran@yahoo.com', '5555555555');

-- Rename column 'name' to 'FIRST_NAME'
EXEC sp_rename 'dbo.Student.name', 'FIRST_NAME', 'COLUMN';

-- View updated table
SELECT * FROM Student;

-- Rename column 'name' to 'FIRST_NAME'
EXEC sp_rename 'dbo.Student.name', 'FIRST_NAME', 'COLUMN';

-- View updated table
SELECT * FROM Student;

-- Rename table 'Student' to 'Students'
EXEC sp_rename 'Student', 'Students';

-- Add a new column 'address' to the Students table
ALTER TABLE Students
ADD address VARCHAR(100);

-- Change the data type of 'phone' column to BIGINT
ALTER TABLE Students
ALTER COLUMN phone BIGINT;

-- View updated column names and types
SELECT COLUMN_NAME, DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'Students';




