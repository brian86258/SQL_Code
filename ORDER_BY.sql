SELECT 
    *
FROM
    employees
ORDER BY first_name;
--  字母順序, date, number 都可以用

SELECT 
    *
FROM
    employees
ORDER BY first_name DESC;

SELECT 
    *
FROM
    employees
ORDER BY first_name,last_name ASC ;

-- 如果以兩個date 來oreder, 會以 兩個條件都符合為優先 
SELECT 
    *
FROM
    employees
ORDER BY hire_date,birth_date DESC;