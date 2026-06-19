use bankingdb;
show tables;

-- customer :- id,first name, trans_id, type, amount
select * from customers;
select * from transactions;

alter table transactions add column CustomerID int;
alter table transactions
add foreign key (CustomerID) references customers(CustomerID);

update transactions set CustomerID =101
where TransactionID in (301,302,305,309);

update transactions set CustomerID =102
where TransactionID in (303,304,310);

update transactions set CustomerID =106
where TransactionID = 306;

update transactions set CustomerID =107
where TransactionID = 307;

update transactions set CustomerID =108
where TransactionID = 308;


-- inner join
select c.CustomerID,c.FirstName,t.TransactionID,t.TransactionType,t.Amount
from customers as c inner join transactions as t 
on c.CustomerID = t.CustomerID;

select c.CustomerID,c.FirstName,t.TransactionID,t.TransactionType,t.Amount
from customers as c inner join transactions as t 
on c.CustomerID = t.CustomerID
where transactiontype in ('Deposit','Withdrawal');

use bankingdb;

-- left join
SELECT 
    c.CustomerID,
    CONCAT(c.FirstName, ' ', c.LastName) AS CustomerName,
    t.TransactionID,
    t.TransactionType,
    t.Amount
FROM Customers c
LEFT JOIN Transactions t
    ON c.CustomerID = t.CustomerID;

-- UPDATE 310 TransactionID with CustomerID = null
update transactions set CustomerID = null 
where transactionID = 310;
-- Right Join
SELECT 
    c.CustomerID,
    CONCAT(c.FirstName, ' ', c.LastName) AS CustomerName,
    t.TransactionID,
    t.TransactionType,
    t.Amount
FROM Customers c
RIGHT JOIN Transactions t
    ON c.CustomerID = t.CustomerID;
    
    
SELECT 
    c.CustomerID,
    CONCAT(c.FirstName, ' ', c.LastName) AS CustomerName,
    t.TransactionID,
    t.TransactionDate,
    t.TransactionType,
    t.Amount
    from customer as c inner join transaction as t 
    on c.CustomerID = t.CustomerId;

select c.CustomerID,c.FirstName,t.TransactionID,t.TransactionType,t.Amount
from customers as c inner join transactions as t 
on c.CustomerID = t.CustomerID
where TransactionType = 'Deposit' and Amount >5000;