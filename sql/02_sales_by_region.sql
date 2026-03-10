SELECT region,
       ROUND(SUM(revenue),2) AS total_revenue_per_region
FROM sales_data
GROUP BY region
ORDER BY 1 DESC