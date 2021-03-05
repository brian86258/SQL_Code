SELECT 
    COUNT(first_name)
FROM
    employees
WHERE
    first_name is not null;
    
SELECT 
    COUNT(DISTINCT first_name)
FROM
    employees;
-- *** KEY *** 要注意 aggregate function  會 ignore NULL values unless told not to

SELECT 
    COUNT(*)
FROM
    salaries
WHERE
    salary >= 100000; 
show tables;
SELECT 
    COUNT(*)
FROM
    dept_manager;
    
SELECT 
    count(*)
FROM
    titles
WHERE
    title IN ('Manager');
    
SELECT 
    *
FROM
    titles
WHERE
    title LIKE 'Ass%' OR title like 'Senio%';
-- 但如果多個的時候還是用regex比較好用

SELECT 
    *
FROM
    titles
WHERE
    title REGEXP 'Senior|^Ass'
-- REGEXP 裡如果 單純是 senior 是會找到所有'包含' Senior的string
 