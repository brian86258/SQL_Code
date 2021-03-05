COMMIT;

SELECT 
    *
FROM
    employees
WHERE
    emp_no = 999903;
    
SELECT 
    *
FROM
    titles
WHERE
    emp_no = 999903;
    
DELETE FROM employees
where
		emp_no=999903;
        
ROLLBACK;

SELECT 
    *
FROM
    departments_dup
ORDER BY dep_no;

DELETE FROM departments_dup;

DELETE FROM departments 
WHERE
    dept_no = 'd010';