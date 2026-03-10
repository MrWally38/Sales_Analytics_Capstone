ALTER TABLE sales_data
ADD COLUMN revenue NUMERIC
GENERATED ALWAYS AS (price_per_unit * quantity_sold) STORED;

SELECT *
FROM sales_data