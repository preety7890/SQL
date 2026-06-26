CREATE DATABASE StudentDB;
USE StudentDB;

CREATE TABLE Students (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    course VARCHAR(50),
    marks INT
);

-- Insert 10 Students
INSERT INTO Students (id, name, course, marks) VALUES
(1, 'Aman', 'Python', 85),
(2, 'Riya', 'Java', 78),
(3, 'Rahul', 'Python', 92),
(4, 'Neha', 'C++', 88),
(5, 'Karan', 'Python', 75),
(6, 'Priya', 'Java', 95),
(7, 'Rohit', 'Python', 81),
(8, 'Anjali', 'C++', 69),
(9, 'Vikas', 'Python', 90),
(10, 'Simran', 'Java', 84);

SELECT * FROM Students;

SELECT * FROM Students
WHERE course = 'Python';

-- Show Students with Marks Above 80
SELECT * FROM Students
WHERE marks > 80;

-- Find Topper
SELECT * FROM Students
ORDER BY marks DESC
LIMIT 1;

-- Display First 3 Students
SELECT * FROM Students
LIMIT 3;
