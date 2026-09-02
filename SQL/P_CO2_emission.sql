-- Basic SELECT

-- 1. Select all columns and all rows from the table.

SELECT *
FROM dbo.CO2emission;

-- 2. Select only Country_Name and Region.

SELECT
		country_name,
		Region
FROM dbo.CO2emission;

-- 3. Select the first 10 rows only (TOP 10).

SELECT TOP 10 *
FROM dbo.CO2emission;

--WHERE Filtering

-- 4. Find all rows where Region = 'South Asia'.

SELECT *
FROM dbo.CO2emission
WHERE Region = 'South Asia';

-- 5. Find the row for Country_Name = 'India'.

SELECT *
FROM dbo.CO2emission
WHERE country_name = 'India';

-- 6. Find all countries where [2019] is greater than 5.

SELECT
	country_name,
	[2019]
FROM dbo.CO2emission
WHERE [2019] > 5;

-- 7. Find all countries where [2019] is NULL.

SELECT
	country_name,
	[2019]
FROM dbo.CO2emission
WHERE [2019] IS NULL;

-- Sorting

-- 8. Sort all countries by [2019] value, highest to lowest.

SELECT
	country_name,
	[2019]
FROM dbo.CO2emission
ORDER BY [2019] DESC;

-- 9. Sort all countries by Country_Name alphabetically.

SELECT
	country_name
FROM dbo.CO2emission
ORDER BY country_name ASC;

-- Aggregates

-- 10. Count the total number of rows in the table.

SELECT
	COUNT(*) AS total_rows
FROM dbo.CO2emission;

-- 11. Count how many distinct countries exist.

SELECT
	COUNT(DISTINCT(country_name)) AS distinct_countries
FROM dbo.CO2emission;

-- 12. Find the average [2019] value across all countries.

SELECT
	AVG([2019]) as avg_value
FROM dbo.CO2emission;

-- 13. Find the maximum [2019] value.

SELECT
	MAX([2019]) as max_value
FROM dbo.CO2emission;

-- 14. Find the minimum [2019] value (excluding NULLs).

SELECT
	MIN([2019]) as min_value
FROM dbo.CO2emission;

SELECT
    MIN(CAST([2019] AS DECIMAL(10,4))) as min_value
FROM dbo.CO2emission;

-- GROUP BY

-- 15. Count how many countries belong to each Region.

SELECT
	Region,
	COUNT(country_name) AS country_count
FROM dbo.CO2emission
GROUP BY Region;

-- 16. Find the average [2019] value per Region.

SELECT
	Region,
	AVG([2019]) AS avg_count
FROM dbo.CO2emission
GROUP BY Region
ORDER BY avg_count DESC;

-- 17. Find the total [2019] value summed per Region.

SELECT
	Region,
	SUM([2019]) AS total_count
FROM dbo.CO2emission
GROUP BY Region
ORDER BY total_count DESC;

-- Simple Filtering + Aggregation

-- 18. Find regions where the average [2019] value is greater than 3 (using HAVING).

-- Basic Joins/Combining Concepts

-- 19. Find the top 5 countries with the highest [2019] emissions.

-- 20. Find countries where [2019] emissions increased compared to.
