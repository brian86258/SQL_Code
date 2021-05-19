select * from t_dept_emp; -- from_date, year
select * from  t_employees; -- gender , count num

SELECT 
    YEAR(d.from_date) AS calender_year,
    e.gender,
    COUNT(*) AS num_of_employees
FROM
    t_dept_emp AS d
        JOIN
    t_employees AS e ON d.emp_no = e.emp_no
GROUP BY calender_date , gender
HAVING calender_date > 1990
ORDER BY (d.from_date);

select * from t_dept_manager;
select * from t_departments;

SELECT 
	d.dept_name,
    ee.gender,
    dm.emp_no,
    dm.from_date,
    dm.to_date,
    e.calender_year,
    CASE
		WHEN YEAR(dm.to_date) >= e.calender_year AND YEAR(dm.from_date) <= e.calender_year THEN 1
        ELSE 0
	END AS active_1
from
	(
		SELECt 
			YEAR(hire_date) as calender_year
		from
			t_employees
		group by calender_year) e
			cross join
		t_dept_manager dm
			join
		t_departments d on dm.dept_no = d.dept_no
			join
		t_employees ee on dm.emp_no = ee.emp_no
order by dm.emp_no, e.calender_year;

--  Task 3
SELECT 
    e.gender, d.dept_name, round(avg(s.salary),2), year(s.from_date) as calender_year
FROM
	t_employees as e
        JOIN
    t_salaries AS s ON e.emp_no = s.emp_no
        JOIN
    t_dept_emp AS de ON e.emp_no = de.emp_no
        JOIN
    t_departments AS d ON de.dept_no = d.dept_no
GROUP BY e.gender , d.dept_no , calender_year
HAVING calender_year <= 2002
order by d.dept_name,calender_year;

--  Task 3 test
SELECT 
    e.gender, d.dept_name, s.salary, year(s.from_date) as calender_year
FROM
	t_employees as e
        JOIN
    t_salaries AS s ON e.emp_no = s.emp_no
        JOIN
    t_dept_emp AS de ON e.emp_no = de.emp_no
        JOIN
    t_departments AS d ON de.dept_no = d.dept_no
GROUP BY e.gender , d.dept_no , calender_year
HAVING calender_year <= 2002
order by d.dept_name,calender_year;
    

