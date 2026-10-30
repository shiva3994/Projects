USE DB_sales_transaction;

-- S3.1  Select Transaction_ID, Customer_Name and Sales_Amount for the first 10 rows.

SELECT TOP 10
	Transaction_ID,
	Customer_Name,
	Sales_Amount 
FROM Sales_transactions_2022_2025;

-- S3.2  Rows where Country = 'Canada' and Sales_Amount > 500.

SELECT *
FROM Sales_transactions_2022_2025
WHERE Country = 'Canada' AND Sales_Amount > 500;

-- S3.3  Use IN to filter three regions.

SELECT *
FROM Sales_transactions_2022_2025
WHERE Region IN ('Ontario', 'British Columbia','Midwest');

-- S3.4  Use BETWEEN to get orders placed in 2024.

SELECT *
FROM Sales_transactions_2022_2025
WHERE Order_Date BETWEEN '2024-01-01' AND '2024-12-31';

-- S3.5  Use LIKE to find Product_Names starting with 'Aero'.



-- S3.6  Find transactions where Promotion_Code IS NULL; list distinct countries with an alias.

