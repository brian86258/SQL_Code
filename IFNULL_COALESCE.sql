select * from departments_dup;

ALTER TABLE departments_dup
CHANGE COLUMN dept_name dept_name VARCHAR(40) NULL; 

INSERT INTO departments_dup(dep_no) VALUES ('d010'), ('d011');

SELECT
*
FROM
departments_dup
ORDER BY dep_no ASC; 

alter table departments_dup
add column dept_manager varchar(255) NULL AFTER dept_name;

commit;

-- IFNULL COALESCE begin

/* IFNULL(aaa,bbb)
	如果有aaa欄位裡面不適null 那就把那個欄位的值print 出來, 那如果是null 就print bbb
 */
SELECT 
    dep_no, IFNULL(dept_name, 'Department not provided') as dept_name
FROM
    departments_dup
ORDER BY dep_no ASC;
/* COALESCE 就是有多個argument的 IFNULL*/
SELECT 
    dept_no,
    COALESCE(dept_name, 'Department not provided') AS dept_name
FROM
    departments_dup
ORDER BY dept_no ASC;
/*  COALESCE(dept_manager,dept_name, 'N/A') 為例
	如果dept_manager 不是null會直接print dept_manager
    如果dept_manager 是 null 會去找 dept_name
    如果連dept_name都是null 就會去找 N/A
*/
SELECT 
    dept_no,
    dept_name,
    COALESCE(dept_manager,dept_name, 'N/A') AS dept_manager
FROM
    departments_dup
ORDER BY dept_no ASC;

commit;
select * from departments_dup;

UPDATE departments_dup 
SET 
    dept_manager = 'Tom Cruise'
WHERE
    dept_no = 'd009';

alter table departments_dup change dep_no dept_no char(4);

SELECT 
    dept_no,
    dept_name,
    COALESCE('FAKE') AS fake_message
FROM
    departments_dup
ORDER BY dept_no ASC;

-- Exercise 1

SELECT 
    dept_no, dept_name, IFNULL(dept_name,dept_no) AS dept_info
FROM
    departments_dup
ORDER BY dept_no ASC;

-- Exercise 2

SELECT
    ifnull(dept_no, 'N/A') as dept_no,
    ifnull(dept_name, 'Department name are not provided') as dept_name,
    coalesce(dept_name,dept_no) as dept_info
FROM
    departments_dup
ORDER BY dept_no ASC;

SELECT 
    COALESCE(NULL, 'Second', 'Third') as Test;

SELECT 
    COALESCE(NULL, NULL,'Third') as Test;








