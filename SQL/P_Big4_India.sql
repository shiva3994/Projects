USE P_Big4_India;

-- Type A — Basic SELECT + WHERE (single condition)

-- 1. Select all clients where Industry = 'Retail'.

SELECT *
FROM dbo.Clients
WHERE Industry = 'Retail';

-- 2. Select all employees where Department = 'Finance'.

SELECT *
FROM dbo.Employees
WHERE Department = 'Finance';

-- 3. Select all projects where Status = 'On Hold'.

SELECT *
FROM dbo.Projects
WHERE Status = 'On Hold';

-- 4. Select all offices where Country = 'India'.

SELECT *
FROM dbo.Office_Locations
WHERE Country = 'India';

-- 5. Select all financial records where Year = 2020.

SELECT *
FROM dbo.Company_Financials
WHERE Year = 2020;

-- Type B — Comparison operators


-- 6. Find all employees with Salary > 80000.


-- 7. Find all clients with ContractValue < 5000000.


-- 8. Find all projects with Budget >= 7000000.


-- 9. Find all financial records where Profit < 0 (loss-making quarters).


-- 10. Find all employees where Age <= 25.

-- Type C — NULL handling
-- 11. Find all rows in Employees where Salary IS NULL.
-- 12. Find all rows in Projects where Client_ID IS NULL.
-- 13. Find all rows in Company_Financials where Profit IS NULL.
-- 14. Find all rows in Technologies where Popularity IS NULL.
-- 15. Find all rows in Office_Locations where City IS NULL.

-- Type D — Pattern matching (LIKE)
-- 16. Find all clients whose Company name starts with 'T'.
-- 17. Find all employees whose Role contains the word 'Engineer'.
-- 18. Find all offices located in a City starting with 'Pu'.
-- 19. Find all technologies where Technology contains 'SQL'.
-- 20. Find all clients in an Industry ending with 'care' (e.g. Healthcare).
