show databases;
use dummy_db;

show tables;
describe employee;

insert into employee (emp_id,first_name,last_name,age,salary,city,contact)
values (101,'Rahul','Sharma',20,450000,'Mumbai',9619110705);

alter table employee modify column contact varchar(20);

select * from employee;

insert into employee (emp_id,first_name,last_name,age,salary,city,contact)
values (102,'Rakesh','Patil',24,65000,'Pune',9619110706);

SET SQL_SAFE_UPDATES = 0; 

update employee 
set city = 'Mumbai'
where emp_id = 102; -- updating row

delete from employee where emp_id = 102;



-- selecting bankingdb 
use bankingdb;
describe customers;
describe Accounts;

insert into Customers (CustomerID, FirstName , LastName , Email , Phone , AccountCreationDate , DateOfBirth )
values (102 , 'Priya' , 'Patil' , 'priya@gmail.com' , '9988776655' , '2025-05-03' , '2000-09-20');

insert into Customers (CustomerID, FirstName , LastName , Email , Phone , AccountCreationDate , DateOfBirth )
values (101,'Rahul','Sharma','rahul@gmail.com','9619110705','2025-06-03','2000-06-03');

select * from customers;

INSERT INTO Accounts
(AccountID, CustomerID, AccountType, Balance)
VALUES
(201, 101, 'Savings', 25000);

select * from Accounts;

INSERT INTO Accounts
(AccountID, CustomerID, AccountType, Balance)
VALUES
(202, 102, 'Current', 40000);