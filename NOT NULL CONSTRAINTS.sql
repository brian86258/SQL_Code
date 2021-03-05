CREATE TABLE companies   
(
    company_id int auto_increment,   
    company_name varchar(255) not null,  
    headquarters_phone_number varchar(255),
    primary key(company_id)
);
drop table companies;
-- 要把not null constraint 修改 要用modify back to null
 alter table companies
 modify company_name varchar(255) null;
 
 alter table companies
 change column company_name company_name varchar(255) not null;
 
 
 alter table companies
 modify headquarters_phone_number varchar(255) null;
 
 alter table companies
 change column headquarters_phone_number headquarters_phone_number varchar(255) not null;
 
 insert into companies(headquarters_phone_number,company_name)
 value('2971-6021','Coke');
 
 select * from companies;