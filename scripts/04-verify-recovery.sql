USE company_db;

-- Display all restored employee records
SELECT * FROM employees;

-- Verify the total number of restored records
SELECT COUNT(*) AS restored_employees
FROM employees;