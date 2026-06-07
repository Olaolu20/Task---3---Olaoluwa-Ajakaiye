# Task---3---Olaoluwa-Ajakaiye
My third Internship Project at DecodeLabs

SQL Analysis
Objective
Use SQL queries to extract business insights from the cleaned e-commerce dataset using SELECT, WHERE, ORDER BY, GROUP BY and aggregation functions.
Tool Used
MySQL Workbench
Database
Table Name: orders
Records: 1,200 rows
Columns: 14
Source: Cleaned dataset from Project 1
What Was Done
Used SELECT to preview and explore the dataset
Used ORDER BY to identify highest value orders
Used WHERE to filter cancelled orders and high-value cancellations
Used GROUP BY with COUNT, SUM and AVG for product, payment and order status analysis
Combined multiple aggregations in a single query for full product performance overview
Quantified total revenue lost from cancellations and returns
Key Findings
Chair generated the highest total revenue ($195,620) despite being the 3rd most ordered product
Credit Card had the highest average order value at $1,127.55
2023 was the strongest sales year with $552,643 in total revenue
Only 19.3% of orders were successfully delivered
Cancellations and returns account for 41.4% of all orders
Total revenue lost to cancellations and returns: $519,673.91 — 41.1% of total revenue
Files in This Repository
`Dataset for Data Analytics (Cleaned Dataset).xlsx` — The cleaned dataset imported into MySQL
`DecodeLabs_Project3_SQL_Report.docx` — Full written analysis report
`DecodeLabs_Project3_Queries.sql` — All SQL queries written during the project
