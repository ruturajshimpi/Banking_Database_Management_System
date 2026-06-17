use bankingdb;
show tables;
select * from accounts;

-- total balance
select sum(Balance) as Total_Balance from accounts;

-- average balance
select AVG(Balance) as average_Balance from accounts;

-- maximum balance
select max(Balance) as Highest_Balance from accounts;

-- minimum balance
select min(Balance) as Lowest_Balance from accounts;

-- count
select count(*) from accounts;

-- group by
select AccountType, sum(Balance) as Total_Balances 
from accounts
group by AccountType
order by Total_Balances asc;

select * from transactions;

select TransactionType , sum(Amount) as Total_Amount
from Transactions
group by TransactionType
order by Total_Amount desc
limit 3;

-- group by + having 
select AccountType , sum(Balance) as Total_Balance
from accounts
group by AccountType 
having Total_Balance > 25000;


select AccountType , sum(Balance) as Total_Balance
from accounts
group by AccountType 
having AccountType in ('Savings','Current');


