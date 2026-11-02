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

SELECT *
FROM Sales_transactions_2022_2025
WHERE Product_Name LIKE 'Aero%';

-- S3.6  Find transactions where Promotion_Code IS NULL; list distinct countries with an alias.

SELECT 
	DISTINCT(Country),
	Promotion_Code
FROM Sales_transactions_2022_2025
WHERE Promotion_Code IS NULL;

-- S4.1  Top 10 transactions by Sales_Amount.

SELECT TOP 10 *
FROM Sales_transactions_2022_2025
ORDER BY Sales_Amount DESC;

-- S4.2  Sort by Country ascending, then Profit descending.

SELECT *
FROM Sales_transactions_2022_2025
ORDER BY Country ASC,
		 Profit DESC 

-- S4.3  The 5 lowest-profit transactions.

SELECT TOP 5 *
FROM Sales_transactions_2022_2025
ORDER BY Profit ASC;

-- S4.4  Latest orders first, using Order_Date and Order_Time.

SELECT
	Order_ID,
	Sales_Channel,
	City,
	Order_Date,
	Order_Time
FROM Sales_transactions_2022_2025
ORDER BY Order_Date DESC,
		 Order_Time DESC;


-- S4.5  Find the 3rd highest Sales_Amount using OFFSET (or a subquery).



-- S4.6  Sort so NULL Customer_Ratings appear last.











