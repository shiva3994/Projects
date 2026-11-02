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

-- SELECT TOP 3
--	Sales_Amount
-- FROM Sales_transactions_2022_2025
-- ORDER BY Sales_Amount DESC; -- LIST CHECK

-- CORRECT QUERY

SELECT
	DISTINCT Sales_Amount
FROM Sales_transactions_2022_2025
ORDER BY Sales_Amount DESC
OFFSET 2 ROWS FETCH NEXT 1 ROW ONLY;

-- S4.6  Sort so NULL Customer_Ratings appear last.

SELECT Customer_Rating
FROM Sales_transactions_2022_2025
ORDER BY Customer_Rating DESC;


-- S5. GROUP BY with Aggregations

-- S5.1  COUNT, SUM, AVG, MIN and MAX of Sales_Amount in one query.


-- S5.2  Total revenue per Product_Category.


-- S5.3  Transaction count and average rating per Sales_Channel.


-- S5.4  Explain COUNT(*), COUNT(column) and COUNT(DISTINCT Customer_ID) with this data.


-- S5.5  Revenue by Country and Order_Year.


-- S5.6  Profit margin % per Store.

 

-- S6. GROUP BY with HAVING
-- S6.1  Categories with total revenue above 1,000,000.
-- S6.2  Customers with more than 3 transactions.
-- S6.3  Stores with average Customer_Rating below 4.
-- S6.4  Explain WHERE vs HAVING with an example.
-- S6.5  Promotion codes with at least 50 transactions and total profit above 10,000.
-- S6.6  Products with more than 10 returned transactions.



-- S7. CASE Statements
-- S7.1  Label each transaction Low (<100), Medium (100-500) or High (>500).
-- S7.2  Create age bands (under 25, 25-34, 35-44, 45-54, 55+).
-- S7.3  Pivot-style output: count of transactions per Sales_Channel as separate columns using CASE.
-- S7.4  Conditional sum: revenue from Returned vs not Returned transactions.
-- S7.5  Show 'No Promo' when Promotion_Code is blank.
-- S7.6  Use CASE inside an UPDATE or ORDER BY.




-- S8. Date Functions
-- S8.1  Extract year, month and day-of-week from Order_Date.
-- S8.2  Orders in the last 90 days from a given date (DATEDIFF).
-- S8.3  Monthly revenue with month names, sorted in calendar order.
-- S8.4  Add Delivery_Days to Order_Date to get the delivery date (DATE_ADD / DATEADD).
-- S8.5  Format Order_Date as 'YYYY-MM'.
-- S8.6  Orders placed on weekends; count orders by hour of Order_Time.




-- S9. Data Manipulation: UPDATE, DELETE
-- S9.1  Update Region 'NRW' to 'North Rhine-Westphalia'.
-- S9.2  Cap Discount_Percentage at 50 where it is higher.
-- S9.3  Delete rows where Quantity <= 0 (what do you run first as a safety check?).
-- S9.4  Delete duplicate Transaction_IDs using ROW_NUMBER in a CTE.
-- S9.5  DELETE vs TRUNCATE vs DROP: differences.
-- S9.6  Use a transaction with ROLLBACK to test a risky UPDATE.








