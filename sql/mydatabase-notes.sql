
-- SQL data types
-- INT
-- DECIMAL(p, s) -- p: total digits, s: how many digits after the dot
-- VARCHAR(20) -- maximum string letters: 20
-- DATE -- 'YYYY-MM-DD'


-- Three ways to comment out:
-- 1. --
-- 2. /* */
-- 3. /**
--     *
--     *
--    */


-- Creating the database and a table

-- Step 0: Create a database by typing below codes in MySQL command line:
-- create database [database's name];

-- Step 0.5: Connect `mydatabase` with 'PopSQL' and start below codes in 'PopSQL' or 'MySQLbench'

-- Step 1: Create a table
/*
create table employees(
    -- name of column, type of data, set it as primary key (id), set it automatically increase
    employeeID int PRIMARY key AUTO_INCREMENT,
    employeeName varchar(25) NOT NULL, -- prevent it from null
    age int,
    salary int DEFAULT 1500, -- set default value: 1500
    supervisor int,
    department int 
);

DESCRIBE employees;
*/

-- Step 2: Insert data into the table
/* 
-- When insert the first row, you need to define the primary ID
INSERT INTO employees VALUES(100, "Josh Donaldson", 35, 3500, null, 1);

-- Designate the column and add data into it
INSERT INTO employees(employeeName, age, salary, supervisor, department) VALUES("Mike Napoli", 40, 2400, 100, 1);
INSERT INTO employees(employeeName, age, salary, supervisor, department) VALUES("Cody Allen", 37, 2400, 100, 2);
INSERT INTO employees(employeeName, age, salary, supervisor, department) VALUES("Nolan Ryan", 34, 1500, 101, 1);
INSERT INTO employees(employeeName, age, salary, supervisor, department) VALUES("Jason Heyward", 33, 1500, 102, 2);
INSERT INTO employees(employeeName, age, salary, supervisor, department) VALUES("Fred Johnson", 30, 1500, 101, 1);
INSERT INTO employees(employeeName, age, salary, supervisor, department) VALUES("Zach Britton", 29, 1500, 101, 1);
INSERT INTO employees(employeeName, age, salary, supervisor, department) VALUES("Oliver Perez", 30, 1500, 102, 2);
*/

-- Step 3: Read the table
-- SELECT * FROM employees;

-- Step 4: Update data in the table
/*
-- UPDATE [table] SET [rules/designated data (after)] WHERE [rules/designated data (before)]
UPDATE employees SET employeeID = 107 WHERE employeeID = 108;
UPDATE employees SET salary = 1800 WHERE salary = 1500;
*/

-- Step 5: Delete data
-- DELETE FROM employees WHERE employeeID = 107;

-- Step 6: Delete whole table
-- DELETE FROM employees; (table will still exist.)
-- DROP TABLE employees;  (table will be gone.)

-- Step 7: Query (find the data of columns)
-- SELECT employeeID, employeeName FROM employees;

-- sort the data by age (Default: ASCENT --> small to big)
-- SELECT * FROM employees ORDER BY age;

-- sort the data by age (DESCENT --> big to small)
-- SELECT * FROM employees ORDER BY age DESC;

-- sort the data by age, then sort by salary (DESCENT --> big to small)
-- SELECT * FROM employees ORDER BY age DESC, salary;

-- Step 8: Limited the described data (Return how many rows)
-- SELECT * FROM employees LIMIT 2;

-- Step 9: Return the oldest three people
-- SELECT * FROM employees ORDER BY age DESC LIMIT 3;

-- Step 10: Find the data with specific rules
/*
SELECT *
FROM employees
WHERE department != 1 AND salary >= 2000;
*/
