USE company_db;

INSERT INTO employees
(employee_id, first_name, last_name, department, salary)
VALUES
(1, 'James', 'Wilson', 'IT', 85000.00),
(2, 'Sarah', 'Johnson', 'HR', 72000.00),
(3, 'Michael', 'Brown', 'Finance', 90000.00),
(4, 'Emily', 'Davis', 'Marketing', 68000.00),
(5, 'David', 'Miller', 'IT', 95000.00),
(6, 'Jessica', 'Garcia', 'HR', 75000.00),
(7, 'Daniel', 'Martinez', 'Finance', 88000.00),
(8, 'Ashley', 'Anderson', 'Marketing', 70000.00),
(9, 'Christopher', 'Thomas', 'IT', 92000.00),
(10, 'Amanda', 'Taylor', 'Finance', 86000.00);

SELECT * FROM employees;