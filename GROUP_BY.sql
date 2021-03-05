use employees;

SELECT 
    first_name
FROM
    employees
GROUP BY first_name;

SELECT 
    first_name, COUNT(first_name) AS name_count
FROM
    employees
GROUP BY first_name
ORDER BY first_name DESC;


SELECT 
    salary, COUNT(emp_no) AS emp_with_same_salary
FROM
    salaries
WHERE
    salary > 80000
GROUP BY salary
ORDER BY salary ;


--  = 用 select distinct, Group by 會比較慢
-- select ..... from ..... where ..... group by ...... order by .....