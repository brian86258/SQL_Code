SELECT 
    *
FROM
    salaries
ORDER BY salary DESC;

SELECT 
    COUNT(from_date)
FROM
    salaries;
    /* 如果有missing data會沒被算到*/
    
SELECT 
    COUNT(distinct from_date)
FROM
    salaries;

/* 用*的話 NULL也會算*/
SELECT 
    COUNT(*)
FROM
    salaries;
    
select * from dept_emp;
select count(distinct dept_no) from dept_emp;
select count(*) from dept_emp;