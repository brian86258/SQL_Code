insert into dept_manager_dup value('110228','d003','1992-03-21','999-01-01');

insert into departments_dup value('d009','Customer Service');

SELECT 
    *
FROM
    departments_dup
ORDER BY dept_no ASC;


SELECT 
    m.dept_no, m.emp_no, d.dept_name
FROM
    dept_manager_dup m
        INNER JOIN
    departments_dup d ON m.dept_no = d.dept_no
GROUP BY m.emp_no
ORDER BY m.dept_no;
-- GROUP BY ,the different data