-- Region Analysis

-- Number of Region
SELECT region, COUNT(region) AS region_count
FROM sales_data
GROUP BY region;

-- Regional Sales
SELECT region,
       ROUND(SUM(revenue),2) AS sales_per_region
FROM sales_data
GROUP BY region
ORDER BY 2 DESC;

-- Regional Quantity Sold
SELECT region,
       COUNT(quantity_sold) AS quantity_sold_per_region
FROM sales_data
GROUP BY region
ORDER BY 2 DESC;

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

-- Region and Product Performance by Quantity Sold
-- NB: The Minimum Number of Quantity sold is 6

SELECT product_id,
       product_name,
	   region,
	   SUM(quantity_sold) AS quantity_sold_per_product
FROM sales_data
GROUP BY product_id, product_name, region
HAVING SUM(quantity_sold) >= 6 
ORDER BY 4 DESC;