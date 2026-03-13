## Sales Analytics Version Control Capstone with Git and GitHub

### OVERVIEW
This project demonstrates the use of Git version control and GitHub collaboration workflows in managing a data analytics project.

Using a sales dataset, SQL queries were developed to answer key business questions such as total revenue, top-performing products, regional performance, and transaction distribution. The project simulates a real-world analytics workflow including:

1. Feature branching
2. Pull Requests (PR)
3. Issue tracking
4. Merge conflict simulation and resolution
5. Branch protection
6. Version tagging

The goal is to demonstrate best practices for collaborative analytics development using Git and GitHub.

### DATASET DESCRIPTION (Sales Data)
Dataset File: sales_data.csv

The dataset contains transactional sales records used to analyze revenue, product performance, and regional sales trends.

Dataset Fields:
| Column              | Description                       |
| ------------------- | --------------------------------- |
| order_date          | Date the order was placed         |
| customer_segment    | Customer category                 |
| Country             | Country where the order occured   |
| region              | Sales Region                      |
| product_id          | Unique identifier for each product|
| product_category    | Category of Product               |
| product_name        | Name of the Product Sold          |
| price_per_unit      | Unit Price of Product             |
| quantity_sold       | Number of Units Sold              |

### Derived Metric
Revenue is calculated as:

price_per_unit X quantity_sold

### SQL Scripts

All analytical queries are stored in the /sql directory.

Scripts include:
01. Total Revenue Generated
02. Region's Revenue Analysis
03. Top 10 Best-Selling Products Analysis
04. Country Transaction Analysis
05. Category's Quantity Summary
06. sql capstone answers script
07. sales_data script

### GIT Workflow 
This project uses a feature branch workflow to simulate collaborative development.

Branches created:
| Branch               | Purpose                      |
| -------------------- | ---------------------------- |
| main                 | Stable production version    |
| total-sales          | Total revenue calculation    |
| region-analysis      | Regional revenue insights    |
| top-product-analysis | Product performance analysis |
