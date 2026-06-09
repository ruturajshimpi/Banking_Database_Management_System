create database dummy_db; -- creating databse 

show databases;
use dummy_db;

CREATE TABLE Employee (
    emp_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    age INT CHECK (age >= 18),
    salary DECIMAL(10,2) NOT NULL,
    city VARCHAR(50) DEFAULT 'Mumbai'
);

-- Renaming the table
Alter table Employee rename to staff;
Alter table staff rename to Employee;

describe Employee; -- Describing a table

-- Add column 
Alter table Employee add column phone INT ;
describe Employee;
alter table Employee add column email_id varchar(50);


-- change column 
alter table Employee change column phone contact INT NOT NULL;

-- MODIFY COLUMN 
alter table Employee modify column email_id varchar(100) unique;

-- Drop Column 
alter table Employee drop column email_id;


-- shifting towards bankingdb 

show databases;
use bankingdb;

alter table customers add DateOfBirth Date;

alter table customers modify Phone varchar(20);

alter table Accounts modify Balance Decimal (10,2) CHECK (Balance >=1000);

describe accounts ;
describe customers;
