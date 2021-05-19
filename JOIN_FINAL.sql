use employees;

SELECT 
    d.dept_name, AVG(s.salary)
FROM
    departments d
        JOIN
    dept_manager m ON d.dept_no = m.dept_no
        JOIN
    salaries s ON m.emp_no = s.emp_no;
     -- 沒有用group by就會全部寫在一起
SELECT 
    d.dept_name, AVG(s.salary) AS avg_salary
FROM
    departments d
        JOIN
    dept_manager m ON d.dept_no = m.dept_no
        JOIN
    salaries s ON m.emp_no = s.emp_no
GROUP BY d.dept_name
HAVING avg_salary > 60000
ORDER BY avg_salary DESC;
--  KEY : AGGREGATE 就要用HAVING不能用WHERE

select * from employees;
SELECT 
    e.gender , count(m.emp_no)
FROM
    employees e
        JOIN
    dept_manager m ON m.emp_no = e.emp_no
GROUP BY e.gender;
	