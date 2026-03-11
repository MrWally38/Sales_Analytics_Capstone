--GIT and GITHUB CAPSTONE ANSWERS;

--Q5 What is the total quantity sold per category?

SELECT product_category,
       SUM(quantity_sold) AS total_quantity_sold
FROM sales_data
GROUP BY product_category
ORDER BY 2 DESC