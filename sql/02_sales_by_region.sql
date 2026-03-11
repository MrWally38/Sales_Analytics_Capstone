--GIT and GITHUB CAPSTONE ANSWERS;

-- Q2 Which region generated the highest revenue?

SELECT region,
       ROUND(SUM(revenue),2) AS total_revenue_by_region
FROM sales_data
GROUP BY region
ORDER BY 2 DESC