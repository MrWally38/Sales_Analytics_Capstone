--GIT and GITHUB CAPSTONE ANSWERS;

-- Q1 What is the total revenue generated in the dataset?

SELECT ROUND(SUM(revenue),2) AS total_revenue
FROM sales_data