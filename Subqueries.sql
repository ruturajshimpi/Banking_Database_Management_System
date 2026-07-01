use bankingdb;
show tables;
select * from Customers;
select * from transactions;
select * from accounts;

-- Cross Joiin -- 
select c.CustomerID , c.Firstname , c.Email , t.TransactionID , t.TransactionDate , t.Amount from customers c cross join transactions t;


-- subqueries -- 
select avg(amount) 
from Transactions;

select * from transactions 
where Amount > 
( select avg(Amount) from transactions);

select * from Accounts
where Balance > 
( select avg(Balance) from accounts )
order by Balance desc;

select * from accounts 
where AccountID in
( select AccountID from Transactions where TransactionType = "Deposit");

select * from accounts 
where balance = 
( select max(Balance) from accounts);
