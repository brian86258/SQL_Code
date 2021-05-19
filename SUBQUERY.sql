SELECT 
    e.first_name, e.last_name
FROM
    employees e
WHERE
    e.emp_no IN (SELECT 
            dm.emp_no
        FROM
            dept_manager dm where dm.from_date between '1990-01-01' and '1995-01-01');

SELECT 
    *
FROM
    dept_manager dm
WHERE
    dm.emp_no IN (SELECT 
            e.emp_no
        FROM
            employees e
        WHERE
            e.hire_date BETWEEN '1990-01-01' AND '1995-01-01');

SELECT 
    e.first_name, e.last_name, e.emp_no
FROM
    employees e
WHERE
    EXISTS( SELECT 
            *
        FROM
            dept_manager dm
        WHERE
            dm.emp_no = e.emp_no)
ORDER BY emp_no;
	
SELECT 
    e.first_name, e.last_name, e.emp_no
FROM
    employees e
        JOIN
    dept_manager dm ON e.emp_no = dm.emp_no
ORDER BY emp_no;

SELECT
    *
FROM
    employees e
WHERE
    EXISTS( SELECT
            *
        FROM
            titles t
        WHERE
            t.emp_no = e.emp_no
                AND t.title = 'Assistant Engineer');

select * from titles where title like '%engineer%';
select * from dept_manager;

SELECT 
    A.*
FROM
    (SELECT 
        e.emp_no AS employee_ID,
            MIN(de.dept_no) AS department_code,
            (SELECT 
                    emp_no
                FROM
                    dept_manager
                WHERE
                    emp_no = 110022) AS manager_ID
    FROM
        employees e
    JOIN dept_emp de ON e.emp_no = de.emp_no
    WHERE
        e.emp_no <= 10020
    GROUP BY e.emp_no
    ORDER BY e.emp_no) AS A 
UNION SELECT 
    B.*
FROM
    (SELECT 
    
        e.emp_no AS employee_ID,
            MIN(de.dept_no) AS department_code,
            (SELECT 
                    emp_no
                FROM
                    dept_manager
                WHERE
                    emp_no = 110039) AS manager_ID
    FROM
        employees e
    JOIN dept_emp de ON e.emp_no = de.emp_no
    WHERE
        e.emp_no <= 10040 AND e.emp_no > 10021
    GROUP BY e.emp_no
    ORDER BY e.emp_no
    LIMIT 20) AS B;

-- exercise
DROP TABLE IF EXISTS emp_manager;

CREATE TABLE emp_manager (
   emp_no INT(11) NOT NULL,
   dept_no CHAR(4) NULL,
   manager_no INT(11) NOT NULL
);

insert into emp_manager select 
U.*
from
(
	SELECT 
    A.*
FROM
    (SELECT 
        e.emp_no AS employee_ID,
            MIN(de.dept_no) AS department_code,
            (SELECT 
                    emp_no
                FROM
                    dept_manager
                WHERE
                    emp_no = 110022) AS manager_ID
    FROM
        employees e
    JOIN dept_emp de ON e.emp_no = de.emp_no
    WHERE
        e.emp_no <= 10020
    GROUP BY e.emp_no
    ORDER BY e.emp_no) AS A 
UNION SELECT 
    B.*
FROM
    (SELECT 
    
        e.emp_no AS employee_ID,
            MIN(de.dept_no) AS department_code,
            (SELECT 
                    emp_no
                FROM
                    dept_manager
                WHERE
                    emp_no = 110039) AS manager_ID
    FROM
        employees e
    JOIN dept_emp de ON e.emp_no = de.emp_no
    WHERE
        e.emp_no <= 10040 AND e.emp_no > 10020
    GROUP BY e.emp_no
    ORDER BY e.emp_no
    LIMIT 20) AS B
Union select 
	C.*
	from(
		SELECT 
			e.emp_no AS employee_ID,
				MIN(de.dept_no) AS department_code,
				(SELECT 
						emp_no
					FROM
						dept_manager
					WHERE
						emp_no = 110039) AS manager_ID
		FROM
			employees e
		JOIN dept_emp de ON e.emp_no = de.emp_no
		WHERE
			e.emp_no =110022
              GROUP BY e.emp_no
	) as C
Union select 
	D.*
    from(
    SELECT 
			e.emp_no AS employee_ID,
				MIN(de.dept_no) AS department_code,
				(SELECT 
						emp_no
					FROM
						dept_manager
					WHERE
						emp_no = 110022) AS manager_ID
		FROM
			employees e
		JOIN dept_emp de ON e.emp_no = de.emp_no
		WHERE
			e.emp_no =110039 
              GROUP BY e.emp_no) as D
) as U;





