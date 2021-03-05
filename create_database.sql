create database if not exists Sales;
-- "create schema if not exists Sales;" Schema == database
show databases;
show tables;
select * from sales.customers;
drop database Sales;
use sys;
use sales;

drop table sales;
-- 第一種作法 deop 再重創 
create table sales(
	purchase_number INT NOT NULL auto_increment,
    date_of_purchase  date not null,
    customer_id int,
    item_code varchar(10) not null,
primary key(purchase_number),
foreign key(customer_id) references customers(customer_id) on delete cascade
);
-- 第二種 用alter 
create table sales(
	purchase_number INT NOT NULL auto_increment,
    date_of_purchase  date not null,
    customer_id int,
    item_code varchar(10) not null,
primary key(purchase_number)
);
alter table sales
add foreign key(customer_id) references customers(customer_id) on delete cascade;

alter table sales
drop foreign key sales_ibfk_1;

drop table customers;
create table customers(
	customer_id int,
    first_name varchar(255),
    last_name varchar(255),
    email_address varchar(255),
    number_of_complaints int,
    primary key(customer_id)
);
drop table items;
create table items(
	item_code varchar(255) primary key,
    item varchar(255),
	unit_price numeric(10,2),
    company_id varchar(255)
);
drop table companies;
CREATE TABLE companies   
(
    company_id varchar(255),   
    company_name varchar(255),  
    headquarters_phone_number int(12),   
primary key (company_id)   
);
