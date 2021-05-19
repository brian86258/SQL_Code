SELECT 
    m.dept_no, m.emp_no, d.dept_name
FROM
    dept_manager_dup m
        INNER JOIN
    departments_dup d ON m.dept_no = d.dept_no
ORDER BY m.dept_no;

SELECT 
    m.dept_no, m.emp_no, d.dept_name
FROM
    dept_manager_dup m,
    departments_dup d
WHERE
    m.dept_no = d.dept_no
ORDER BY m.dept_no;
--  以上兩個指令效果一樣 但 where 比較慢
--  EXERCISE
show tables;
select * from dept_manager;
select * from employees;

SELECT 
    m.emp_no, m.dept_no, e.hire_date, e.first_name, e.last_name
FROM
    dept_manager m,
    employees e
WHERE
    e.emp_no = m.emp_no
ORDER BY emp_no;

SELECT 
    m.emp_no, m.dept_no, e.hire_date, e.first_name, e.last_name
FROM
    dept_manager m
        JOIN
    employees e ON e.emp_no = m.emp_no
ORDER BY emp_no;

--  JOIN + WHERE , where 用來設條件限制
SELECT 
    e.emp_no as emp_no_PK, e.first_name, e.last_name, s.salary
FROM
    employees e
        JOIN
    salaries s ON e.emp_no = s.emp_no
WHERE
    s.salary > 145000;
    
-- Select the first and last name, the hire date, and the job title of all employees whose first name is “Margareta” and have the last name “Markovitch”.
select * from employees;
select * from titles;
SELECT 
    e.first_name, e.last_name, e.hire_date, t.title
FROM
    employees e
        JOIN
    titles t ON e.emp_no = t.emp_no
WHERE
    e.first_name = 'Margareta'
        AND e.last_name = 'Markovitch';

