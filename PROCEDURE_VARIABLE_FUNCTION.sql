use employees;
drop procedure if exists test1;

DELIMITER $$
create procedure test1()
BEGIN
	select * from employees
    limit 100;
END$$
DELIMITER ;

-- 1
CALL database_name.procidere_name();
call employees.test1();
-- 2
call test1();
show tables;
select avg(salary) from salaries;

DELIMITER $$
create procedure avg_sal()
BEGIN
	select avg(salary) from salaries;
END$$
DELIMITER ;

call avg_sal();
call select_sal();

-- IN parameter
DELIMITER $$
create procedure emp_salary(IN p_emp_no INTEGER)
BEGIN
SELECT
	e.first_name, e.last_name, s.salary, s.from_date, s.to_date, avg(salary)
    from employees e
    join 
    salaries s on e.emp_no=s.emp_no
	where 
    e.emp_no=p_emp_no;

END$$
DELIMITER ;

DELIMITER $$
create procedure emp_avg_salary(IN p_emp_no INTEGER)
BEGIN
SELECT
	e.first_name, e.last_name, avg(salary)
    from employees e
    join 
    salaries s on e.emp_no=s.emp_no
	where 
    e.emp_no=p_emp_no;
END$$
DELIMITER ;

call emp_avg_salary(11300);

call emp_salary(11300);

-- OUT parameter
DELIMITER $$
create procedure emp_avg_salary_out(IN p_emp_no INTEGER, OUT p_avg_salary DECIMAL(10,2))
BEGIN
SELECT
	avg(s.salary)
    INTO p_avg_salary from employees e
    join 
    salaries s on e.emp_no=s.emp_no
	where 
    e.emp_no=p_emp_no;
END$$
DELIMITER ;


-- Variable
SET @v_avg_salary=0;
call emp_avg_salary_out(11300,@v_avg_salary);
select @v_avg_salary;

-- Exercise
DELIMITER $$
CREATE PROCEDURE emp_info(in p_first_name varchar(255), in p_last_name varchar(255), out p_emp_no integer)
BEGIN
                SELECT
                                e.emp_no
                INTO p_emp_no FROM
                                employees e
                WHERE
                                e.first_name = p_first_name
                                                AND e.last_name = p_last_name;
END$$
DELIMITER ;

call emp_info('Aruna','Journel',@v_emp_no);
select @v_emp_no;

-- FUNCTION
DELIMITER $$
create function f_emp_avg_salary (p_emp_no INTEGER) RETURNS DECIMAL(10,2)
DETERMINISTIC NO SQL READS SQL DATA
BEGIN
	declare v_avg_salary DECIMAL(10,2);
SELECT 
    AVG(s.salary)
INTO v_avg_salary FROM
    employees e
        JOIN
    salaries s ON e.emp_no = s.emp_no
WHERE
    e.emp_no = p_emp_no;
    return v_avg_salary;
END$$
DELIMITER ;
-- SELCET function
select f_emp_avg_salary(11300);

DELIMITER $$



CREATE FUNCTION emp_info(p_first_name varchar(255), p_last_name varchar(255)) RETURNS decimal(10,2)
DETERMINISTIC NO SQL READS SQL DATA
BEGIN
	DECLARE v_max_from_date date;
    DECLARE v_salary decimal(10,2);
SELECT
    MAX(from_date)
INTO v_max_from_date FROM
    employees e
        JOIN
    salaries s ON e.emp_no = s.emp_no
WHERE
    e.first_name = p_first_name
        AND e.last_name = p_last_name;
SELECT
    s.salary
INTO v_salary FROM
    employees e
        JOIN
    salaries s ON e.emp_no = s.emp_no
WHERE
    e.first_name = p_first_name
        AND e.last_name = p_last_name
        AND s.from_date = v_max_from_date;
                RETURN v_salary;
END$$
DELIMITER ;


SELECT EMP_INFO('Aruna', 'Jou rnel');