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