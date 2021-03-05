create table customers(
	customer_id int,
    first_name varchar(255),
    last_name varchar(255),
    email_address varchar(255),
    number_of_complaints int,
    primary key(customer_id),
    unique key(email_address)
);

drop table customers;
create table customers(
	customer_id int auto_increment,
    first_name varchar(255),
    last_name varchar(255),
    email_address varchar(255),
    number_of_complaints int,
    primary key(customer_id)
);

alter table customers
add unique key(email_address);

-- drop index is different, 要刪除unique key 要drop index
alter table customers
drop index email_address; 

alter table customers
add column gender ENUM('M','F') after last_name;

alter table customers
change column number_of_complaints number_of_complaints int default 0;

alter table customers
alter column number_of_complaints drop default;



INSERT INTO customers (first_name, last_name, gender, email_address, number_of_complaints)
VALUES ('John', 'Mackinley', 'M', 'john.mckinley@365careers.com', 3);
-- 如果把email 設成unique key 就不能存一樣的 會有error , 且如果沒有講清楚要存那些field default是全部都要填
insert into customers values(0,'John', 'Mackinley', 'M', 'john.mckinley@365careers.com', 0);
insert into customers (first_name,last_name,gender) values ('Peter','Figaro','M');
select * from customers;


