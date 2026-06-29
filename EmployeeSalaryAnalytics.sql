-- Create Employee Table
CREATE TABLE Employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100),
    department VARCHAR(50),
    salary DECIMAL(10,2)
);

-- Insert Sample Data
INSERT INTO Employee (emp_id, emp_name, department, salary) VALUES
(1, 'Amit', 'HR', 50000),
(2, 'Neha', 'HR', 65000),
(3, 'Raj', 'IT', 80000),
(4, 'Priya', 'IT', 90000),
(5, 'Vikas', 'IT', 70000),
(6, 'Rohan', 'Finance', 60000),
(7, 'Anjali', 'Finance', 75000),
(8, 'Karan', 'Sales', 55000),
(9, 'Pooja', 'Sales', 45000),
(10, 'Deepak', 'Sales', 70000);

SELECT
    department,
    COUNT(*) AS total_employees,
    SUM(salary) AS total_salary,
    AVG(salary) AS avg_salary,
    MAX(salary) AS highest_salary,
    MIN(salary) AS lowest_salary
FROM Employee
GROUP BY department;

-- department with average salary > 60000

 select department,
 avg(salary) as avg_salary
 from employee
 GROUP BY department
 having avg(salary) > 60000
