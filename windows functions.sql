show databases;

use d3;

CREATE TABLE sales_data (
  id INT PRIMARY KEY,
  employee VARCHAR(50),
  region VARCHAR(20),
  sale_date DATE,
  amount DECIMAL(10,2)
);


INSERT INTO sales_data (id, employee, region, sale_date, amount) VALUES
(1, 'Alice', 'North', '2024-01-05', 1200.00),
(2, 'Bob', 'South', '2024-01-06', 800.00),
(3, 'Alice', 'North', '2024-01-10', 1350.00),
(4, 'Charlie', 'East', '2024-01-11', 950.00),
(5, 'Alice', 'North', '2024-01-15', 1600.00),
(6, 'David', 'West', '2024-01-16', 2000.00),
(7, 'Bob', 'South', '2024-01-20', 1100.00),
(8, 'Charlie', 'East', '2024-01-22', 990.00),
(9, 'David', 'West', '2024-01-23', 2100.00),
(10, 'Eva', 'North', '2024-01-25', 1050.00),
(11, 'Alice', 'North', '2024-02-01', 1500.00),
(12, 'Bob', 'South', '2024-02-02', 850.00),
(13, 'Charlie', 'East', '2024-02-03', 980.00),
(14, 'David', 'West', '2024-02-04', 1900.00),
(15, 'Eva', 'North', '2024-02-05', 1150.00),
(16, 'Bob', 'South', '2024-02-07', 900.00),
(17, 'Alice', 'North', '2024-02-10', 1750.00),
(18, 'Charlie', 'East', '2024-02-12', 1020.00),
(19, 'David', 'West', '2024-02-15', 1950.00),
(20, 'Eva', 'North', '2024-02-17', 1250.00),
(21, 'Alice', 'North', '2024-02-20', 1800.00),
(22, 'Bob', 'South', '2024-02-22', 950.00),
(23, 'Charlie', 'East', '2024-02-25', 1040.00),
(24, 'David', 'West', '2024-02-28', 2200.00),
(25, 'Eva', 'North', '2024-02-29', 1300.00);



select * from sales_data;


select *,
row_number() over( partition by employee order by sale_date )
from sales_data;


select *,
rank() over( partition by region order by amount )
from sales_data;


SELECT 
  employee,
  region,
  amount,
  DENSE_RANK() OVER (PARTITION BY region ORDER BY amount DESC) AS sales_rank
FROM sales_data;


SELECT 
  *,
  sum(amount) OVER (PARTITION BY employee ) AS sales_rank
FROM sales_data;


SELECT 
  *,
  sum(amount) OVER (PARTITION BY employee ORDER BY sale_date ) AS sales_rank
FROM sales_data;












































