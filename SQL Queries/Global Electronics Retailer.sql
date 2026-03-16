create database Global_Electronics_Retailer;

-- Q1. Total Quantity Sold
select sum(Quantity) as Total_Quantity_Sold from sales;

-- Q2. Total Transaction
select count(CustomerKey) as Total_Transaction from customers;

-- Q3. Total Products
select count(productKey) as Total_Product from products;

-- Q4. Average Order Value
select avg(Quantity) as Avg_Order_Value from sales;

-- Q5. Total Revenue
select sum(Quantity * `Unit Price USD`) as Total_Revenue from sales as s
inner join products as p
on s.ProductKey = p.ProductKey;

-- Q6. Revenue by Country
select Country, sum(Quantity * `Unit Price USD`) as Total_Revenue from sales as s
inner join products as p
on s.ProductKey = p.ProductKey
inner join customers as c
on s.CustomerKey = c.CustomerKey
group by Country
order by Total_Revenue desc;

-- Q7. Yearly Sales Trend
 select YEAR(`Order Date`) as Yearly, sum(Quantity) as Total_Quantity_Sold from sales
 group by Yearly
 order by Total_Quantity_Sold desc; 

-- Q8. Monthly Sales Trend
 select Monthname(`Order Date`) as Monthly, sum(Quantity) as Total_Quantity_Sold from sales
 group by Monthly;
 
 -- Q9. Revenue by Top 10 State
 select State, sum(Quantity * `Unit Price USD`) Total_Revenue from sales as s
 inner join customers as c
 on s.CustomerKey = c.CustomerKey
 inner join products as p
 on s.ProductKey = p.ProductKey
 group by State
 order by Total_Revenue desc
 limit 10;
 
 -- Q10. Average Selling Price
 select avg(`Unit Price USD`) as Avg_Selling_Price from products;

-- Q11. Revenue by Product Categories
 select Category, sum(Quantity * `Unit Price USD`) as Total_Revenue from products as p
 inner join sales as s
 on p.ProductKey = s.ProductKey
 group by Category
 order by Total_Revenue desc;

-- Q12. Top 10 Products by Revenue & Quantity Sold
 select `Product Name`, sum(Quantity) as Total_QTY_Sold, sum(Quantity * `Unit Price USD`) as Total_Revenue from products as p
 inner join sales as s
 on p.ProductKey = s.ProductKey
 group by `Product Name`
 order by  Total_Revenue desc
 limit 10;
 
-- Q13. Highest Profit by Product Categories
 select Category, sum((`Unit Price USD` - `Unit Cost USD`) * Quantity) as Total_Profit from products as p
 inner join sales as s
 on p.ProductKey = s.ProductKey
 group by Category
 order by Total_Profit desc;
 
-- Q14. Bottom 5 Total Revenue by Product Name
 select `Product Name`, sum(Quantity * `Unit Price USD`) as Total_Revenue from products as p
 inner join sales s
 on p.ProductKey = s.ProductKey
 group by `Product Name`
 order by Total_Revenue asc
 limit 5;
 
-- Q15. Total Customer
 select count(CustomerKey) as Total_Customer from customers;
  
-- Q16. Total Profit
 select sum((`Unit Price USD` - `Unit Cost USD`) * Quantity) as Total_Profit from products as p
 inner join sales as s
 on p.ProductKey = s.ProductKey;
  
-- Q17. Average Customer Age
 select  round(avg(timestampdiff(Year, Birthday, curdate())), 2) as Age from customers;

-- Q18. Sales by Customer Country    
 select Country, sum(Quantity) as Total_Sales from customers as c
 inner join sales as s
 on c.CustomerKey = s.CustomerKey
 group by Country
 order by Total_Sales desc;   
    
-- Q19. Total Revenue by Age Group
 SELECT 
    CASE 
        WHEN `Age At Purchase` <= 19 THEN '10-19'
        WHEN `Age At Purchase` <= 29 THEN '20-29'
        WHEN `Age At Purchase` <= 39 THEN '30-39'
        WHEN `Age At Purchase` <= 49 THEN '40-49'
        WHEN `Age At Purchase` <= 59 THEN '50-59'
        WHEN `Age At Purchase` <= 69 THEN '60-69'
        WHEN `Age At Purchase` <= 79 THEN '70-79'
        WHEN `Age At Purchase` <= 89 THEN '80-89'
        WHEN `Age At Purchase` <= 99 THEN '90-99'
        ELSE '100+' 
    END AS Age_Group,
    SUM(Quantity * `Unit Price USD`) as Total_Revenue
  FROM(
   select p.`Unit Price USD`, s.Quantity, s.`Order Date`, c.Birthday, timestampdiff(Year, c.Birthday, s.`Order Date`) as `Age At Purchase` 
   from sales as s
    JOIN customers c 
        ON s.CustomerKey = c.CustomerKey
    JOIN products p 
	    ON s.ProductKey = p.ProductKey
  )t
  GROUP BY Age_Group;

-- Q20. Sales by Customer State
select State, sum(Quantity) as Total_Sales from sales as s
join customers as c
on s.CustomerKey = c.CustomerKey
group by State
order by Total_Sales desc
limit 10;

-- Q21. Total Customer by Gender
select Gender, count(Gender) as Total_Gender from customers
group by Gender;

-- Q22. Total Customer by Country
select Country, count(CustomerKey) as Total_Customer from customers 
group by Country
order by Total_Customer desc;

-- Q23. Top 10 Customer by Revenue
select Name, sum(Quantity * `Unit Price USD`) as Total_Revenue from customers as c
join sales as s
on c.CustomerKey = s.CustomerKey
join products as p
on s.ProductKey = p.ProductKey
group by Name
order by Total_Revenue desc
limit 10;





-- select*from customers;
-- select*from products;
-- select*from sales;
-- select*from stores; 

 