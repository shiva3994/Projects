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



-- 11. Count how many distinct countries exist.


-- 12. Find the average [2019] value across all countries.


-- 13. Find the maximum [2019] value.


-- 14. Find the minimum [2019] value (excluding NULLs).

-- GROUP BY
-- 15. Count how many countries belong to each Region.
-- 16. Find the average [2019] value per Region.
-- 17. Find the total [2019] value summed per Region.

-- Simple Filtering + Aggregation
-- 18. Find regions where the average [2019] value is greater than 3 (using HAVING).

-- Basic Joins/Combining Concepts
-- 19. Find the top 5 countries with the highest [2019] emissions.
-- 20. Find countries where [2019] emissions increased compared to.
