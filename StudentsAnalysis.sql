CREATE DATABASE school;
USE school;
CREATE TABLE students (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    course VARCHAR(50),
    marks INT,
    city VARCHAR(50)
);

-- Insert 10 Records
INSERT INTO students (id, name, course, marks, city) VALUES
(1, 'Rahul Sharma', 'BCA', 85, 'Lucknow'),
(2, 'Priya Singh', 'B.Tech', 91, 'Kanpur'),
(3, 'Amit Verma', 'B.Com', 76, 'Delhi'),
(4, 'Neha Gupta', 'BBA', 88, 'Noida'),
(5, 'Rohit Kumar', 'BCA', 69, 'Patna'),
(6, 'Anjali Mishra', 'MCA', 94, 'Lucknow'),
(7, 'Vikas Yadav', 'B.Tech', 81, 'Varanasi'),
(8, 'Sneha Jain', 'B.Sc', 79, 'Jaipur'),
(9, 'Arjun Pandey', 'BCA', 87, 'Prayagraj'),
(10, 'Kavya Sharma', 'MBA', 92, 'Mumbai');

SELECT * FROM students;

-- 1. show only delhi students
SELECT*FROM students WHERE city='Delhi';

-- 2. BCA students 
SELECT*FROM students WHERE course='BCA';

-- 3. marks> 80
SELECT*FROM students WHERE marks > 80;

-- 4. Top 3 students
SELECT*FROM students 
order by marks desc
limit 3;

-- 5. Name starting with R
SELECT*FROM students WHERE name like 'R%';

-- 6. student Between marks 70-80 
SELECT*FROM students WHERE marks between 70 AND  80;
