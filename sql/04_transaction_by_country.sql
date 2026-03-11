--GIT and GITHUB CAPSTONE ANSWERS;

--Q4 Which country has the highest number of transactions?

SELECT country,
       SUM(quantity_sold) AS total_transaction,
	   ROUND(SUM(revenue),2) AS total_revenue
FROM sales_data
GROUP BY country
ORDER BY 2 DESC