use employees;
show tables;

SELECT 
    *
FROM
    employees.employees;

SELECT 
    *
FROM
    employees
WHERE
    first_name REGEXP '[dki]';
    
SELECT 
    *
FROM
    employees
WHERE
    first_name REGEXP 'Denis|vis$'
        AND gender REGEXP '[MF]'; 
-- REGEXP '[MF]' 其中有含M or F都會拿到  


SELECT 
    *
FROM
    employees
WHERE
    first_name = 'Denis' or first_name='ELvis';
    
-- *** KEY Prority : AND > OR

SELECT
	*
FROM
	employees
WHERE
	last_name='Denis' AND (gender = 'M' or gender='F');