SELECT 
    *
FROM
    employees
WHERE
    first_name = 'Cathie'
        OR first_name = 'Mark'
        OR first_name = 'Nathan';
        
SELECT 
    *
FROM
    employees
WHERE
    first_name NOT IN ('Cathie','Mark','Nathan');
    
SELECT 
    *
FROM
    employees
WHERE
    first_name IN ('Cathie','Mark','Nathan');
    
SELECT 
    *
FROM
    employees
WHERE
    first_name LIKE ('%ar%');

SELECT 
    *
FROM
    employees
WHERE
    first_name LIKE ('Mar_');

SELECT 
    *
FROM
    employees
WHERE
    first_name LIKE ('Elvi_');
    
SELECT 
    *
FROM
    employees
WHERE
    first_name REGEXP 'Elvi.';
    
SELECT 
    *
FROM
    employees
WHERE
    hire_date LIKE ('2000%');
    
SELECT 
    *
FROM
    employees
WHERE
    emp_no like ('1000_');
    

-- *** KEY:  IN 比 Or 還快*** 
-- *** 用 LIKE 的時候, %代表多個任意符號 , _ 代表一個任意符號 , * 全部的column and row , 都叫做wild card symbol 
-- *** 用 Regular expression 也會比用LIKE來的慢, 所以如果like 可以做到沒必要用REGEPX ,  SQL 是case insensitive