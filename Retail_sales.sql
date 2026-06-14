use retail_sales_analysis;

-- Determine the total number of records in the dataset.
select count(*) from retail_sales;

-- Find out how many unique customers are in the dataset.
select count(distinct customer_id) as unique_customers from retail_sales;

-- Identify all unique product categories in the dataset.
select distinct category from retail_sales;
 
 -- Rename Column
 alter table retail_sales
 rename column quantiy to quantity;
 
 Alter table retail_sales
 rename column ï»¿transactions_id to transaction_id;

-- Check for any null values in the dataset and delete records with missing data.
select * from retail_sales where transaction_id is null or sale_date is null or sale_time is null or
 customer_id is null or gender is null or age is null or category is null or quantity is null or price_per_unit is null or cogs is null;

-- Write a SQL query to retrieve all columns for sales made on '2022-11-05:
select * from retail_sales where sale_date = '2022-11-05';

-- Write a SQL query to retrieve all transactions where the category is 'Clothing' and the quantity
-- sold is more than 4 in the month of Nov-2022:

SELECT 
    *
FROM
    retail_sales
WHERE
    category = 'Clothing' AND quantity >= 4
        AND sale_date BETWEEN '2023-11-01' AND '2023-11-30';
        
-- Write a SQL query to calculate the total sales (total_sale) for each category.:
SELECT 
    category,
    SUM(total_sale) AS net_sale,
    COUNT(*) AS total_orders
FROM
    retail_sales
GROUP BY category;

-- Write a SQL query to find the average age of customers who purchased items from the 'Beauty' category.
SELECT 
    ROUND(AVG(age)) AS average_age
FROM
    retail_sales
WHERE
    category = 'Beauty';

-- Write a SQL query to find all transactions where the total_sale is greater than 1000.
SELECT 
    *
FROM
    retail_sales
WHERE
    total_sale > 1000;

-- Write a SQL query to find the total number of transactions (transaction_id) made
-- by each gender in each category.
SELECT 
    category, gender, COUNT(transaction_id) AS transaction_count
FROM
    retail_sales
GROUP BY category , gender
ORDER BY 1;

-- Write a SQL query to calculate the average sale for each month. Find out best selling month in each year:
select * from
(
SELECT 
    YEAR(sale_date), MONTH(sale_date), AVG(total_sale),
    rank() over(partition by year(sale_date) order by avg(total_sale) desc) As best_selling
FROM
    retail_sales
GROUP BY YEAR(sale_date) , MONTH(sale_date)
ORDER BY YEAR(sale_date) , avg(total_sale) desc) as t1 
where best_selling = 1;

-- Write a SQL query to find the top 5 customers based on the highest total sales:
SELECT 
    customer_id, SUM(total_sale)
FROM
    retail_sales
GROUP BY customer_id
ORDER BY SUM(total_sale) DESC
LIMIT 5;

select count(distinct customer_id) from retail_sales;

-- Write a SQL query to find the number of unique customers who purchased items from each category.:
SELECT 
    COUNT(DISTINCT customer_id) AS unique_customer, category
FROM
    retail_sales
GROUP BY category;

-- Write a SQL query to create each shift and number of orders 
-- (Example Morning <12, Afternoon Between 12 & 17, Evening >17):
with hourly_sales as (
SELECT 
    *,
    case
		when hour(sale_time) < 12 then 'Morning'
        when hour(sale_time) between 12 and 17  then 'Afternoon'
        else
        'Evening'
        end as shift
FROM
    retail_sales)
    select shift ,count(*) from hourly_sales group by shift;










