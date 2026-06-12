show databases;
use bankingDB;
select * from Accounts
where AccountType = "Savings"
or AccountType = "Current";

select * from Accounts
where AccountType in (Savings , Current);

SELECT *
FROM Accounts
ORDER BY Balance DESC
LIMIT 5;

SELECT *
FROM Accounts
where AccountType = "Savings"
ORDER BY Balance DESC
LIMIT 3;

-- Customer whose name starts with "A" 
select * from Customers
where Firstname like "A%";

select * from Customers 
where email like "%gmail%";

select * from Customers
where lastname like "%kar";

-- String Function
select FirstName,LastName,concat(FirstName," ",LastName) as FullName
from customers;

-- upper and Lower 
select upper(FirstName) as FirstName from Customers;
select lower(LastName) as LastName from Customers;

-- 3. Substring
select FirstName , substring(FirstName , 1 , 3) from customers;

-- Replace 
select Replace('hello world' , 'world' , 'SQL') AS replaced_string;