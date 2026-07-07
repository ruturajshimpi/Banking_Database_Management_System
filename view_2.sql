
CREATE DATABASE swiggy_db;

USE swiggy_db;

CREATE TABLE Swiggy_Orders (
    order_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    city VARCHAR(30),
    restaurant VARCHAR(50),
    item_ordered VARCHAR(50),
    price DECIMAL(8,2),
    delivery_status VARCHAR(20)
);

INSERT INTO Swiggy_Orders
(order_id, customer_name, city, restaurant, item_ordered, price, delivery_status)
VALUES
(1, 'Rohan Mehta', 'Mumbai', 'Bikanervala', 'Chole Bhature', 180.00, 'Delivered'),
(2, 'Priya Nair', 'Bangalore', 'Truffles', 'Cheese Burger', 220.00, 'Delivered'),
(3, 'Aman Gupta', 'Delhi', 'Haldiram', 'Raj Kachori', 150.00, 'Cancelled'),
(4, 'Sneha Reddy', 'Hyderabad', 'Paradise Biryani', 'Chicken Biryani', 320.00, 'Delivered'),
(5, 'Karan Malhotra', 'Mumbai', 'Domino''s', 'Farmhouse Pizza', 399.00, 'Pending');

SELECT * FROM Swiggy_Orders;



CREATE VIEW Delivered_Orders AS
SELECT order_id, customer_name, city, restaurant, item_ordered, price
FROM Swiggy_Orders
WHERE delivery_status = 'Delivered';

-- normal table jese -- 
select * from Delivered_Orders;

CREATE OR REPLACE VIEW Delivered_Orders AS
SELECT order_id, customer_name, city, restaurant, item_ordered, price, delivery_status
FROM Swiggy_Orders
WHERE delivery_status in ('Delivered','Pending');

create view City_Revenue as 
select city , sum(price) as total_Revenue, count(*) as total_orders
from swiggy_Orders
group by city;

select * from City_Revenue;

update City_Revenue set total_revenue = 5000 WHERE City = 'Mumbai';