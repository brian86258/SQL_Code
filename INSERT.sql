use employees;

SELECT 
    *
FROM
    employees
ORDER BY emp_no DESC
LIMIT 10;

insert into employees (emp_no,birth_date,first_name,last_name,gender,hire_date) values(999901,'1986-04-24','John','Smith','M','2011-01-01');

INSERT INTO employees 
(
	birth_date,
    emp_no,
    first_name,
    last_name,
    gender,
    hire_date
)
VALUES
(
	'1973-3-23',
    999902,
    'P',
    'L',
    'F',
    '205-01-01'
);
-- 如果沒有特別獎順序的話  就要按照default的順序去填
INSERT INTO employees 
VALUES
(
	999905,
	'1973-3-26',
    'P',
    'L',
    'F',
    '205-01-01'
);

-- Exercise 1
SELECT 
    *
FROM
    titles
ORDER BY emp_no DESC
LIMIT 10;

INSERT INTO employees

VALUES

(
    999903,
    '1977-09-14',
    'Johnathan',
    'Creek',
    'M',
    '1999-01-01'
);
-- 沒有specify的話就都不能空
insert into titles value(999903,'Senior Engineer','1997-10-1','9999-01-01');

-- Exercise 2
SELECT 
    *
FROM
    dept_emp
ORDER BY emp_no DESC
LIMIT 10;
insert into dept_emp value(999903,'d005','1997-10-1','9999-01-01');

-- PART 2

SELECT 
    *
FROM
    departments
ORDER BY dept_no ;
    
CREATE TABLE departments_dup (
    dep_no CHAR(4) NOT NULL,
    dept_name VARCHAR(40) NOT NULL
);
SELECT * FROM
    departments_dup;
    
insert into departments_dup 
(
	dep_no,
    dept_name
)
select * from departments;

insert into departments value('d010','BA');