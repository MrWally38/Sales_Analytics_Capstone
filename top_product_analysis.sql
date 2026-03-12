-- Top Products Analysis

-- Top Product by Sales
SELECT product_id,
       product_name,
       ROUND(SUM(revenue),2) AS total_sales_per_product
FROM sales_data
GROUP BY product_id, product_name
ORDER BY 3 DESC;

-- Top Product by Quantity Sold
SELECT product_id,
       product_name,
       SUM(quantity_sold) AS quantity_sold_per_product
FROM sales_data
GROUP BY product_id, product_name
ORDER BY 3 DESC;