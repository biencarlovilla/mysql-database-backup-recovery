USE company_db;

-- Simulate accidental deletion of employee records
DELETE FROM employees;

-- Verify that all records were deleted
SELECT COUNT(*) AS remaining_employees
FROM employees;