select * from employees where count(hire_date > '2000-01-01');
-- 雖然文法上沒錯 但會跑不過


SELECT 
    first_name, COUNT(first_name) AS name_count
FROM
    employees
GROUP BY first_name
HAVING  name_count >260 and COUNT(first_name)<270
ORDER BY first_name ; 
/* 用了as 之後可以直接直接在having裡面用 alias的名字
*/
SELECT 
    *, AVG(salary) AS average_salary
FROM
    salaries
WHERE
    salary > 120000
GROUP BY emp_no
ORDER BY emp_no;

SELECT 
    *, AVG(salary)
FROM
    salaries
GROUP BY emp_no
HAVING AVG(salary) > 120000
ORDER BY emp_no;

SELECT 
    *, AVG(salary)
FROM
    salaries
WHERE
    emp_no IN ('10237' , '11486')
GROUP BY emp_no;

SELECT 
	first_name,count(first_name)
FROM
    employees
WHERE
    hire_date > '1999-01-01'
GROUP BY first_name
HAVING COUNT(first_name) < 200
ORDER BY first_name DESC;


SELECT 
    *, emp_no,count(emp_no)
FROM
    dept_emp
WHERE
    from_date > '2000-01-01'
GROUP BY emp_no
HAVING COUNT(from_date) > 1
ORDER BY emp_no DESC;