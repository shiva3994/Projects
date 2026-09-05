USE P_Big4_India;

-- DAY 1

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

SELECT *
FROM dbo.Employees
WHERE Salary > 80000;

-- 7. Find all clients with ContractValue < 5000000.

SELECT *
FROM dbo.Clients
WHERE ContractValue < 5000000;

-- 8. Find all projects with Budget >= 7000000.

SELECT *
FROM dbo.Projects
WHERE Budget >= 7000000;

-- 9. Find all financial records where Profit < 0 (loss-making quarters).

SELECT *
FROM dbo.Company_Financials
WHERE Profit < 0;

-- 10. Find all employees where Age <= 25.

SELECT *
FROM dbo.Employees
WHERE Age <= 25;

-- Type C — NULL handling

-- 11. Find all rows in Employees where Salary IS NULL.

SELECT *
FROM Employees
WHERE Salary IS NULL;

-- 12. Find all rows in Projects where Client_ID IS NULL.

SELECT *
FROM Clients
WHERE Client_ID IS NULL;

-- 13. Find all rows in Company_Financials where Profit IS NULL.

SELECT *
FROM Company_Financials
WHERE Profit IS NULL;

-- 14. Find all rows in Technologies where Popularity IS NULL.

SELECT *
FROM Technologies
WHERE Popularity IS NULL;

-- 15. Find all rows in Office_Locations where City IS NULL.

SELECT *
FROM Office_Locations
WHERE City IS NULL;

-- Type D — Pattern matching (LIKE)

-- 16. Find all clients whose Company name starts with 'T'.

SELECT *
FROM Clients
WHERE Company LIKE 'T%';

-- 17. Find all employees whose Department contains the word 'Engineer'.

SELECT *
FROM Employees
WHERE Department LIKE '%Engineer%';

-- 18. Find all offices located in a City starting with 'Pu'.

SELECT * 
FROM Office_Locations
WHERE City LIKE 'Pu%';

-- 19. Find all technologies where Technology contains 'SQL'.

SELECT *
FROM Technologies
WHERE Technology LIKE '%SQL%';

-- 20. Find all clients in an Industry ending with 'care' (e.g. Healthcare).

SELECT *
FROM Clients
WHERE Industry LIKE '%care';

-- DAY 2 

-- SQL Type A — Single aggregate, no grouping

-- 1. Find the average Salary across all employees.

SELECT
	AVG(Salary) AS avg_salary
FROM Employees;

-- 2. Find the total (SUM) ContractValue across all clients.



-- 3. Find the maximum Budget across all projects.

-- 4. Find the minimum Profit across all financial records.

-- 5. Count the total number of offices.


-- Type B — GROUP BY with COUNT
-- 6. Count how many employees work in each Department.
-- 7. Count how many clients exist per Industry.
-- 8. Count how many projects exist per Status.
-- 9. Count how many offices exist per Country.
-- 10. Count how many financial records exist per Company.

-- Type C — GROUP BY with SUM/AVG
-- 11. Find the average Salary per Department.
-- 12. Find the total ContractValue per Industry.
-- 13. Find the average Budget per Technology (from Projects).
-- 14. Find the total Revenue per Company (from Company_Financials).
-- 15. Find the average Popularity per Technology (from Technologies).

-- Type D — GROUP BY with MIN/MAX
-- 16. Find the highest-paid employee's salary per Department.
-- 17. Find the largest ContractValue per Industry.
-- 18. Find the smallest Budget per Status.
-- 19. Find the highest Profit per Company.
-- 20. Find the highest Popularity score per Technology.
