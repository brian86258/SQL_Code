select 
	e.gender, AVG(s.salary) as avg_salary
from 
	employees e 
		join
	salaries s on e.emp_no = s.emp_no
GROUP BY gender;

-- SQL會顯示出第一個data, 但在這裡顯示emp_no並不代表 gender
select 
	e.emp_no, e.gender, AVG(s.salary) as avg_salary
from 
	employees e 
		join
	salaries s on e.emp_no = s.emp_no
GROUP BY gender;

SELECT 
    e.first_name,
    e.last_name,
    e.hire_date,
    m.from_date,
    d.dept_no
FROM
    employees e
        JOIN
    dept_manager m ON e.emp_no = m.emp_no
        JOIN
    departments d ON m.dept_no = d.dept_no;
    
SELECT 
    e.first_name,
    e.last_name,
    e.hire_date,
    m.from_date,
    d.dept_name
FROM
    departments d
        JOIN
    dept_manager m ON m.dept_no = d.dept_no
        JOIN
    employees e ON e.emp_no = m.emp_no;
    
-- Select all managers’ first and last name, hire date, job title, start date, and department name.
select * from titles;
SELECT 
    e.first_name,
    e.last_name,
    e.hire_date,
    m.from_date,
    t.title,
    d.dept_name
FROM
    employees e
        JOIN
    dept_manager m ON e.emp_no = m.emp_no
        JOIN
    titles t ON t.emp_no = e.emp_no
        JOIN
    departments d ON m.dept_no = d.dept_no
WHERE
    t.title = 'Manager';
