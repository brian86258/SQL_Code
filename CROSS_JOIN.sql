-- CROSS JOIN is the Cartesian product of two or more sets  A X B
SELECT 
    dm.*, d.*
FROM
    dept_manager dm
        CROSS JOIN
    departments d
ORDER BY dm.emp_no , d.dept_no;

SELECT 
    dm.*, d.*
FROM
    dept_manager dm,
    departments d
ORDER BY dm.emp_no , d.dept_no;

SELECT 
    dm.*, d.*
FROM
    dept_manager dm
        JOIN
    departments d
ORDER BY dm.emp_no , d.dept_no;
--  ** KEY : 以上三種寫法都一樣 ** JOIN withou on 甚至沒有寫join 都是cartesian product效果一樣但不推薦  最好還是寫CROSS join

SELECT 
    dm.*, d.*
FROM
    dept_manager dm
        CROSS JOIN
    departments d
WHERE
    d.dept_no <> dm.dept_no
ORDER BY dm.emp_no , d.dept_no;
-- KEY <> 代表 != , CROSS JOIN 可以多個table,但乘起來會很大

SELECT 
    e.*, d.*
FROM
    dept_manager dm
        CROSS JOIN
    departments d
        JOIN
    employees e ON e.emp_no = dm.emp_no
WHERE
    d.dept_no <> dm.dept_no
ORDER BY dm.emp_no , d.dept_no;
-- Use a CROSS JOIN to return a list with all possible combinations between managers from the dept_manager table and department number 9 
show tables;
select * from departments;
SELECT 
    m.*, d.*
FROM
    dept_manager m
        CROSS JOIN
    departments d
WHERE
    d.dept_no = 'd009';
-- Return a list with the first 10 employees with all the departments they can be assigned to.
-- Hint: Don’t use LIMIT; use a WHERE clause.    
select * from employees;
SELECT 
    e.*, d.*
FROM
    employees e
        CROSS JOIN
    departments d
ORDER BY d.dept_no,e.emp_no;