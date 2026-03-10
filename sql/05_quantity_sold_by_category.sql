SELECT product_category,
       SUM(quantity_sold) AS total_quantity_sold_per_category
FROM sales_data
GROUP BY product_category
ORDER BY 2 DESC