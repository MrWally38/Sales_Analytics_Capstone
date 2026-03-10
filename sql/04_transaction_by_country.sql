SELECT country,
       SUM(quantity_sold) AS total_transaction_per_country,
   	   ROUND(SUM(revenue),2) AS total_revenue_per_country
FROM sales_data
GROUP BY country
ORDER BY 2 DESC
