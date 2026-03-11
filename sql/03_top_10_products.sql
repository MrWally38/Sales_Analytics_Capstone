--GIT and GITHUB CAPSTONE ANSWERS;

--Q3 What are the top 10 best-selling products by revenue?

SELECT product_id,
       product_name,
	   SUM(quantity_sold) AS total_quantity_sold,
	   ROUND(SUM(revenue),2) AS total_revenue
FROM sales_data
GROUP BY product_id,
         product_name
ORDER BY 4 DESC
LIMIT 10