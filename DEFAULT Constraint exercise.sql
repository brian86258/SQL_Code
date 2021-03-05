CREATE TABLE companies   
(
    company_id varchar(255),   
    company_name varchar(255) default('X'),  
    headquarters_phone_number varchar(255),   
primary key(company_id),
unique key (headquarters_phone_number)
);
drop table companies;

CREATE TABLE companies   
(
    company_id varchar(255),   
    company_name varchar(255),  
    headquarters_phone_number varchar(255),
    primary key(company_id)
);

alter table companies
add unique key(headquarters_phone_number);

alter table companies
change column company_name company_name varchar(255) default('X');