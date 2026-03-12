-- Total Sales Summary

-- Daily Sales
SELECT order_date AS order_date_per_day,
       ROUND(SUM(revenue),2) AS daily_sales
FROM sales_data
GROUP BY order_date
ORDER BY 1 ASC;

-- Tota Sales from January 1st to 4th, 2011
SELECT ROUND(SUM(revenue),2) AS total_sales_from_jan01_to_jan04_2011
FROM sales_data;