SELECT 
    *
FROM
    dept_manager_dup
ORDER BY dept_no;

SELECT 
    *
FROM
    departments_dup
ORDER BY dept_no;

SELECT 
    m.dept_no, m.emp_no, d.dept_name
FROM
    dept_manager_dup m
        INNER JOIN
    departments_dup d ON m.dept_no = d.dept_no
ORDER BY m.dept_no;
-- KEY : Inner JOIN,1 只會顯示有match的項目 2, inner join不會把有 null的值(ONLY non-null matching value are in play)給print 出來 


show tables;
select * from employees;
select * from titles;

SELECT 
    m.emp_no, e.first_name, e.last_name, m.dept_no, e.hire_date
FROM
    dept_manager m
        INNER JOIN
    employees e ON m.emp_no = e.emp_no
ORDER BY emp_no;
/*Inner JOIN == JOIN*/
SELECT 
    m.emp_no, t.title, t.to_date
FROM
    dept_manager m
        INNER JOIN
    titles t ON m.emp_no = t.emp_no;