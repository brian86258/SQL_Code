SELECT 
    SUM(salary)
FROM
    salaries;
/* sum不能用 * */

show tables;
select * from salaries;

SELECT 
    SUM(salary)
FROM
    salaries
WHERE
    to_date > '1997-01-01';
    
SELECT 
    MAX(salary)
FROM
    salaries;

SELECT 
    MIN(salary)
FROM
    salaries;
    
SELECT 
    min(to_date)
FROM
    salaries;

SELECT 
    *
FROM
    employees;
SELECT 
    MIN(emp_no)
FROM
    employees;
    
/* Avg 只會看non null的value*/

SELECT 
    AVG(salary)
FROM
    salaries;
    
SELECT 
    AVG(salary)
FROM
    salaries;

SELECT 
    ROUND(AVG(salary),2)
FROM
    salaries;
