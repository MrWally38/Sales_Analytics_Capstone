--GIT and GITHUB CAPSTONE ANSWERS;

SELECT *
FROM sales_data;

-- Create a new column to calculate "revenue" (price_per_unit * quantity_sold)
ALTER TABLE sales_data
ADD COLUMN revenue NUMERIC
GENERATED ALWAYS AS (price_per_unit * quantity_sold) STORED;

SELECT *
FROM sales_data;

-- Q1 What is the total revenue generated in the dataset?

SELECT ROUND(SUM(revenue),2) AS total_revenue
FROM sales_data;


-- Q2 Which region generated the highest revenue?

SELECT region,
       ROUND(SUM(revenue),2) AS total_revenue_by_region
FROM sales_data
GROUP BY region
ORDER BY 2 DESC;


--Q3 What are the top 10 best-selling products by revenue?

SELECT product_id,
       product_name,
	   SUM(quantity_sold) AS total_quantity_sold,
	   ROUND(SUM(revenue),2) AS total_revenue
FROM sales_data
GROUP BY product_id,
         product_name
ORDER BY 4 DESC
LIMIT 10;


--Q4 Which country has the highest number of transactions?

SELECT country,
       SUM(quantity_sold) AS total_transaction,
	   ROUND(SUM(revenue),2) AS total_revenue
FROM sales_data
GROUP BY country
ORDER BY 1 DESC;


--Q5 What is the total quantity sold per category?

SELECT product_category,
       SUM(quantity_sold) AS total_quantity_sold
FROM sales_data
GROUP BY product_category
ORDER BY 2 DESC;