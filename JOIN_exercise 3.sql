delete from dept_manager_dup where emp_no ='110228';
delete from departments_dup where dept_no ='d009';

insert into dept_manager_dup values('110228','d003','1992-03-21','9999-01-01');
insert into departments_dup value('d009','Customer Service');

-- LEFT JOIN
SELECT 
    m.dept_no, m.emp_no, d.dept_name
FROM
    dept_manager_dup m
        LEFT JOIN
    departments_dup d ON m.dept_no = d.dept_no
GROUP BY m.emp_no
ORDER BY m.dept_no;

SELECT 
    d.dept_no, m.emp_no, d.dept_name
FROM
    dept_manager_dup m
        RIGHT JOIN
    departments_dup d ON m.dept_no = d.dept_no
ORDER BY m.dept_no;
-- KEY : 如果要用 RIGHT/LEFT JOIN, 要注意select的column要跟right table 或 left table 

SELECT 
    m.dept_no, m.emp_no, d.dept_name
FROM
    dept_manager_dup m
        LEFT JOIN
    departments_dup d ON m.dept_no = d.dept_no
WHERE
    dept_name IS NULL
ORDER BY m.dept_no;

select * from employees;

SELECT 
    e.emp_no, e.first_name, e.last_name, m.dept_no
FROM
    dept_manager m
        RIGHT JOIN
    employees e ON e.emp_no = m.emp_no
WHERE
    e.last_name = 'Markovitch'
ORDER BY emp_no;


SELECT
    e.emp_no,  
    e.first_name,  
    e.last_name,  
    dm.dept_no
FROM  
    employees e  
        LEFT JOIN   
dept_manager dm ON e.emp_no = dm.emp_no  
WHERE  

    e.last_name = 'Markovitch'  

ORDER BY e.emp_no;

SELECT
    e.emp_no,  
    e.first_name,  
    e.last_name,  
    dm.dept_no
FROM  
    employees e  
        RIGHT JOIN   
dept_manager dm ON e.emp_no = dm.emp_no  
WHERE  

    e.last_name = 'Markovitch'  

ORDER BY e.emp_no;

--  LEFT RIGHt JOIN 差很多