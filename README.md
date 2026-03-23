# Global Electronics Retail-Inventory & Sales

## Table of Contents
- <a href="#Overview">Overview</a>
- <a href="#Objective">Objective</a>
- <a href="#Business Problem">Business Problem</a>
- <a href="#Tools & Technology">Tools & Technology</a>
- <a href="#Research Questions">Research Questions</a>
- <a href="#Key Findings">Key Findings</a>
- <a href="#Final Recommendations">Final Recommendations</a>
- <a href="#Author & Contact">Author & Contact</a>


## Project Overview

This project presents an interactive **Power BI dashboard** developed to analyze the sales performance of a global electronics retailer. The dashboard integrates multiple business datasets including customers, products, and Sales to deliver insights across three major business areas:
* Sales performance trends
* Product category profitability
* Customer demographics and behavior


## Objective

The objective of this dashboard is to transform raw transactional retail data into meaningful insights that support data-driven decision-making for business stakeholders.

The report consists of three analytical views:

1. Sales Performance Analysis
2. Product Performance Analysis
3. Customer Insights Analysis

Together, these views provide a comprehensive understanding of revenue drivers, customer segments, and product-level opportunities.


## Business Problem

Retail organizations operate across multiple countries, product categories, and customer segments. However, without centralized analytics, it becomes difficult to identify:

* which markets generate the highest revenue
* which products drive profitability
* who the most valuable customers are
* how purchasing behavior changes over time

The business needed a centralized interactive dashboard that enables stakeholders to monitor performance KPIs, detect trends early, and make strategic decisions regarding sales planning, customer targeting, and product optimization.


## Dataset
- Multiple CSV files located in `CSV Files` folder(Products, Customers, Sales)
- Summary table created from ingested data and used for analysis


## Tools & Technology
-SQL(Aggregate Function, Joins, Filtering, Case Statement, Subqueries)
-Power BI(Data Modeling, DAX Measures, Interactive Filters & Slicers, Interactive Visualization)
-Github

## Project Structure
```
global-electronics-retailer/

README.md

SQL Queries/                     # MySQL Workbench
    Data Cleaning.sql
    Global Electronics Retailer.sql

Dashboard/               # Power BI dashboard file
    Global Electronics Retailer.pbix 

CSV Files/                      # CSV files
    Products.csv
    Customer.csv
    Sales.csv       

Images/                        # Dashboard png    
    Customer Insights.png
    Product Analysis.png
    Sales Performance Analysis.png
```


---
## Dashboard

![Sales Performance Analysis](Images/Sales%20Performance%20Analysis.png)

![Product Analysis](Images/Product%20Analysis.png)

![Customer Insights](Images/Customer%20Insights.png)

---

## Research Questions

### Sales Performance Questions

* Which country contributes the highest revenue?
* Which states generate the strongest regional performance?
* What are the monthly and yearly revenue trends?
* Are there seasonal variations in sales activity?

### Product Performance Questions

* Which product categories generate the highest revenue?
* Which categories produce the highest profit?
* Which products are underperforming?
* What is the contribution of top-selling products to total revenue?

### Customer Insights Questions

* Which customer age groups contribute most to revenue?
* What is the geographic distribution of customers?
* Who are the top revenue-generating customers?
* Is there a gender-based difference in customer participation?


## Key Findings

The analysis revealed several important business insights:

### Sales Insights

* The United States is the highest revenue-generating country
* California and Texas are the strongest performing states
* Sales show noticeable fluctuations across months indicating seasonal purchasing behavior
* Revenue peaked in recent years before declining in 2021, suggesting possible external market influence

### Product Insights

* Computers are the top-performing category by revenue
* Home Appliances generate strong profit contribution
* A small group of products contributes a large share of total revenue
* Several low-performing products contribute minimal value and may require optimization

### Customer Insights

* The majority of customers are located in the United States
* Customers between ages 30–69 contribute the largest portion of revenue
* Revenue contribution between male and female customers is relatively balanced
* A small number of high-value customers contribute disproportionately to total revenue


## Final Recommendations

* Focus expansion strategies on high-performing markets such as the United States
* Increase inventory investment in top-performing categories like Computers and Home Appliances
* Review and optimize low-performing products to improve profitability
* Develop targeted marketing campaigns for customers aged 30–69
* Introduce loyalty programs for high-value repeat customers
* Investigate causes behind recent revenue decline trends to support future forecasting accuracy

Implementing these strategies can help improve revenue performance, optimize product portfolio decisions, and strengthen customer engagement initiatives.


## Author & Contact
**Mujaffar Husain**
Email: mujaffar019@Gmail.com
LinkedIn: [LinkedIn](https://www.linkedin.com/in/mujaffar06)






