select * from dbo.Employee

select * from dbo.department

 --Performing a LEFT JOIN

 SELECT Employee.EmpID, Employee.Name, department.
department_name, department.department_head, 
department.location 
FROM Employee
LEFT JOIN department ON Employee.department_id = department.department_id;

--SQL LEFT JOIN with WHERE Clause

SELECT e.EmpID, e.Name, d.department_name, d.department_head, d.location 
FROM Employee e
LEFT JOIN department d ON e.department_id = d.department_id
WHERE d.location = 'Bangalore';


--SQL LEFT JOIN as Aliases

SELECT e.EmpID, e.Name, d.department_name, 
d.department_head, d.location 
FROM Employee e
LEFT JOIN department d ON 
e.department_id = d.department_id;



-- Drop tables if they exist
DROP TABLE IF EXISTS Album;
DROP TABLE IF EXISTS Artist;

-- Create Artist table
CREATE TABLE Artist (
   artist_id INT PRIMARY KEY,
   name VARCHAR(100)
);

-- Create Album table
CREATE TABLE Album (
   album_id INT PRIMARY KEY,
   title VARCHAR(100),
   artist_id INT,
   FOREIGN KEY (artist_id) REFERENCES Artist(artist_id)
);

-- Insert artists
INSERT INTO Artist (artist_id, name) VALUES
(1, 'AC/DC'),
(2, 'Aerosmith'),
(6, 'Fleetwood Mac');

-- Insert albums
INSERT INTO Album (album_id, title, artist_id) VALUES
(1, 'For those who rock', 1),
(2, 'Dream on', 2),
(3, 'Restless and wild', 2),
(4, 'Let there be rock', 1),
(5, 'Rumours', 6);

-- View data
SELECT * FROM Artist;
SELECT * FROM Album;

-- LEFT JOIN

select * from Artist as art
LEFT JOIN Album as alb
ON art.artist_id = alb.artist_id;

--RIGHT JOIN

-- Create a new table with a different name
CREATE TABLE employee_data (
   emp_no VARCHAR(10) PRIMARY KEY,
   emp_name VARCHAR(100),
   dept_no VARCHAR(10)
);

-- Insert employee records
INSERT INTO employee_data (emp_no, emp_name, dept_no) VALUES
('E1', 'Varun Singhal', 'D1'),
('E2', 'Amrita Aggarwal', 'D2'),
('E3', 'Ravi Anand', 'D3');

-- View the data
SELECT * FROM employee_data;

-- Create a new table with a different name

CREATE TABLE department_info (
   dept_no VARCHAR(10) PRIMARY KEY,
   d_name VARCHAR(100),
   location VARCHAR(100)
);

-- Insert department records
INSERT INTO department_info (dept_no, d_name, location) VALUES
('D1', 'IT', 'Delhi'),
('D2', 'HR', 'Hyderabad'),
('D3', 'Finance', 'Pune'),
('D4', 'Testing', 'Noida'),
('D5', 'Marketing', 'Mathura');

-- View the data
SELECT * FROM department_info;

SELECT emp_no , emp_name ,d_name, location 
FROM employee_data 
RIGHT  JOIN department_info 
ON employee_data.dept_no = department_info.dept_no;

select * from Artist as art
RIGHT JOIN Album as alb
ON art.artist_id = alb.artist_id;


-- LEFT ANTI JOIN: Employees whose department is not listed in department_info
SELECT e.*
FROM employee_data e
LEFT JOIN department_info d ON e.dept_no = d.dept_no
WHERE d.dept_no IS NULL;

-- RIGHT ANTI JOIN: Departments that have no employees assigned
SELECT d.*
FROM department_info d
LEFT JOIN employee_data e ON d.dept_no = e.dept_no
WHERE e.dept_no IS NULL;

--UNION

SELECT dept_no FROM employee_data
UNION
SELECT dept_no FROM department_info;


--UNION ALL

SELECT dept_no FROM employee_data
UNIONALL
SELECT dept_no FROM department_info;

select artist_id from Artist
union
select artist_id from Album

select artist_id from Artist
unionall
select artist_id from Album

--SEMI JOIN

SELECT *
FROM employee_data e
WHERE EXISTS (
    SELECT 1
    FROM department_info d
    WHERE d.dept_no = e.dept_no
);

--ANTI JOIN

SELECT *
FROM employee_data e
WHERE NOT EXISTS (
    SELECT 1
    FROM department_info d
    WHERE d.dept_no = e.dept_no
);


Select * from Album
where artist_id IN (select artist_id from Artist);

Select * from Album
where artist_id NOT IN (select artist_id from Artist);









