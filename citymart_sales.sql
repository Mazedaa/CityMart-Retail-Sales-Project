-- Select All
SELECT * FROM citymart_retail_sales.`citymart_retail_sales.xlsx - data`;

-- Limit 10
SELECT * 
FROM citymart_retail_sales.`citymart_retail_sales.xlsx - data`
Limit 10;

-- Total Sales Performance --

-- Total Sales By Month
SELECT 
	Month, 
    SUM(Total_Amount) AS total_sales_by_month
FROM citymart_retail_sales.`citymart_retail_sales.xlsx - data` 
GROUP BY Month
ORDER BY Month;

-- Total Sales By Gender
SELECT 
    Gender, 
    SUM(Total_Amount) AS total_sales_by_gender 
FROM citymart_retail_sales.`citymart_retail_sales.xlsx - data`
GROUP BY Gender;

-- Total Sales By Age
SELECT 
	Age_Group, 
    SUM(Total_Amount) AS total_sales_by_age 
FROM citymart_retail_sales.`citymart_retail_sales.xlsx - data` 
GROUP BY Age_Group
ORDER BY Age_Group;

-- Category Performance --

-- Total sales by category
SELECT 
    Product_Category, 
    SUM(Total_Amount) AS total_sales
FROM citymart_retail_sales.`citymart_retail_sales.xlsx - data`
GROUP BY Product_Category
ORDER BY total_sales DESC;

-- Monthly sales for each category
-- Total Sales By Month
SELECT 
	Product_Category,
    Month, 
    SUM(Total_Amount) AS total_sales_by_month
FROM citymart_retail_sales.`citymart_retail_sales.xlsx - data` 
GROUP BY Product_Category, Month
ORDER BY Product_Category, Month;


-- Total Sales By Gender
SELECT 
    Product_Category,
    Gender, 
    SUM(Total_Amount) AS total_sales_by_gender 
FROM citymart_retail_sales.`citymart_retail_sales.xlsx - data`
GROUP BY Product_Category, Gender
ORDER BY Product_Category, Gender;

-- Total Sales By Age
SELECT 
	 Product_Category,
    Age_Group, 
    SUM(Total_Amount) AS total_sales_by_age 
FROM citymart_retail_sales.`citymart_retail_sales.xlsx - data` 
GROUP BY Product_Category, Age_Group
ORDER BY Product_Category, Age_Group;

-- Average Spending -- 

-- Average Spending by Gender
SELECT 
    Gender, 
    AVG(Total_Amount) AS avg_sales_by_gender 
FROM citymart_retail_sales.`citymart_retail_sales.xlsx - data`
GROUP BY Gender
ORDER BY Gender;

-- Average Spending by Age
SELECT 
    Age_Group, 
    AVG(Total_Amount) AS avg_sales_by_age 
FROM citymart_retail_sales.`citymart_retail_sales.xlsx - data`
GROUP BY Age_Group
ORDER BY Age_Group;

-- Average Spending by Product Category
SELECT 
    Product_Category, 
    AVG(Total_Amount) AS avg_sales_by_product 
FROM citymart_retail_sales.`citymart_retail_sales.xlsx - data`
GROUP BY Product_Category
ORDER BY Product_Category;

-- Quantity Analysis --

-- Total Quantity Sold by Month
SELECT 
	Month, 
    SUM(Quantity) AS total_quantity_by_month
FROM citymart_retail_sales.`citymart_retail_sales.xlsx - data` 
GROUP BY Month
ORDER BY Month;

-- Total Quantity by Category
SELECT 
	Product_Category, 
    SUM(Quantity) AS total_quantity_by_product
FROM citymart_retail_sales.`citymart_retail_sales.xlsx - data` 
GROUP BY Product_Category
ORDER BY Product_Category;

-- Total Quantity by Gender
SELECT 
	Gender, 
    SUM(Quantity) AS total_quantity_by_gender
FROM citymart_retail_sales.`citymart_retail_sales.xlsx - data` 
GROUP BY Gender
ORDER BY Gender;

-- Total Quantity by Age
SELECT 
	Age_Group, 
    SUM(Quantity) AS total_quantity_by_product
FROM citymart_retail_sales.`citymart_retail_sales.xlsx - data` 
GROUP BY Age_Group
ORDER BY Age_Group;

-- Price Point Analysis --

-- Sales at Specific price point 
SELECT 
    Price_per_Unit, 
    COUNT(*) AS Transactions, 
    SUM(Quantity) AS total_quantity, 
    SUM(Total_Amount) AS total_sales 
FROM citymart_retail_sales.`citymart_retail_sales.xlsx - data` 
WHERE Price_per_Unit IN (25, 30, 50, 300, 500) 
GROUP BY Price_per_Unit  
ORDER BY Price_per_Unit ;

-- Sales Trends for each price point by month
SELECT 
    Price_per_Unit, 
    Month, 
    SUM(Total_Amount) AS total_sales 
FROM citymart_retail_sales.`citymart_retail_sales.xlsx - data` 
WHERE Price_per_Unit IN (25, 30, 50, 300, 500) 
GROUP BY Price_per_Unit, Month  
ORDER BY Price_per_Unit, Month;

-- Gender and Age Trends -- 

-- Sales Breakdown by gender and product category
SELECT 
	Gender, 
    Product_Category,
    SUM(Total_Amount) AS total_amount_by_gender
FROM citymart_retail_sales.`citymart_retail_sales.xlsx - data` 
GROUP BY Gender, Product_Category
ORDER BY Gender, total_amount_by_gender DESC;

-- Sales Breakdown by age and product category
SELECT 
	Age_Group, 
    Product_Category,
    SUM(Total_Amount) AS total_amount_by_age
FROM citymart_retail_sales.`citymart_retail_sales.xlsx - data` 
GROUP BY Age_Group, Product_Category
ORDER BY Age_Group, total_amount_by_age DESC;







