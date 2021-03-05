use employees;

SELECT 
    *
FROM
    employees
WHERE
    first_name IS NULL;
show tables;
SELECT 
    *
FROM
    departments
WHERE
    dept_no IS NULL; 
-- KEY : date 也可以用 > , < , !=
SELECT 
    *
FROM
    employees
WHERE
    hire_date >= '1999-01-01' and hire_date <'1999-01-03' ;
    
SELECT 
    *
FROM
    employees
WHERE
    gender = 'F'
        AND hire_date >= '2000-01-01';
select * from salaries where salary > 150000;

SELECT DISTINCT
    dept_no
FROM
    departments;