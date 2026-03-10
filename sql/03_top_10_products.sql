SELECT product_id,
       product_name,
	   SUM(quantity_sold) AS quantity_sold_per_product,
	   ROUND(SUM(revenue),2) AS total_revenue_per_product
FROM sales_data
GROUP BY product_id, product_name
ORDER BY 4 DESC
LIMIT 10