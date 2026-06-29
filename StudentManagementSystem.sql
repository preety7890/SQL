CREATE DATABASE StudentManagement;

USE StudentManagement;

-- Create Table
CREATE TABLE Students (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    course VARCHAR(50),
    marks INT
);

INSERT INTO Students (id, name, course, marks) VALUES
(1, 'Aman', 'BCA', 85),
(2, 'Riya', 'BBA', 90),
(3, 'Rahul', 'B.Tech', 78),
(4, 'Neha', 'BCA', 88),
(5, 'Karan', 'B.Com', 75);

-- Display All Students
SELECT * FROM Students;

-- Change Course of Student 
UPDATE Students
SET course = 'MCA'
WHERE id = 3;

-- Display Updated Table
SELECT * FROM Students;

-- Remove One Student 
DELETE FROM Students
WHERE id = 5;

-- Display Final Table
SELECT * FROM Students;
