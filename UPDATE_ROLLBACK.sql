use employees;

/*
insert into employees (emp_no,birth_date,first_name,last_name,gender,hire_date) values(999901,'1986-04-24','John','Smith','M','2011-01-01');
*/

UPDATE employees 
SET 
    first_name = 'Stella',
    last_name = 'Parkinson',
    birth_date = '1990-12-31',
    gender = 'F'
WHERE
    emp_no = 999901;
/* KEY : 用update的時候就算沒有相對應的record仍會過 有可能根本沒更新到值*/
SELECT 
    *
FROM
    employees
ORDER BY emp_no DESC;

-- rollback

SELECT 
    *
FROM
    departments_dup
ORDER BY dep_no;

commit;

update departments_dup
set 
	dep_no = 'd011',
    dept_name = 'QA';
/*  用UPDATE的 時候 WHERE 一定要寫 不然會把整個table都覆蓋*/
/* rollback 會帶回到上一次的commit */
ROLLBACK;