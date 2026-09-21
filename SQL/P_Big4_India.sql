
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

SELECT
	SUM(ContractValue) AS total_value
FROM Clients;

-- 3. Find the maximum Budget across all projects.

SELECT
	MAX(Budget) as max_budget
FROM Projects;

-- 4. Find the minimum Profit across all financial records.

SELECT
	MIN(Profit) as min_profit
FROM Company_Financials;

-- 5. Count the total number of offices.

SELECT
	COUNT(*) AS total_count_office
FROM Office_Locations;

-- Type B — GROUP BY with COUNT

-- 6. Count how many employees work in each Department.

SELECT
	Department,
	COUNT(*) AS count_by_employees
FROM Employees
GROUP BY Department;

-- 7. Count how many clients exist per Industry.

SELECT
	Industry,
	COUNT(*) AS count_by_clients
FROM Clients
GROUP BY Industry;

-- 8. Count how many projects exist per Status.

SELECT
	Status,
	COUNT(*) AS count_by_status
FROM Projects
GROUP BY Status;

-- 9. Count how many offices exist per Country.

SELECT
	Country,
	COUNT(*) AS count_by_office
FROM Office_Locations
GROUP BY Country;

-- 10. Count how many financial records exist per Company.

SELECT
	Company,
	COUNT(*) AS count_by_financial_records
FROM Company_Financials
GROUP BY Company;

-- Type C — GROUP BY with SUM/AVG

-- 11. Find the average Salary per Department.

SELECT
	Department,
	AVG(Salary) AS avg_dep_salary
FROM Employees
GROUP BY Department;

-- 12. Find the total ContractValue per Industry.

SELECT 
	Industry,
	SUM(ContractValue) AS total_ContractValue
FROM Clients
GROUP BY Industry;

-- 13. Find the average Budget per Technology (from Projects).

SELECT
	Technology,
	AVG(Budget) AS avg_budget
FROM Projects
GROUP BY Technology;

-- 14. Find the total Revenue per Company (from Company_Financials).

SELECT
	Company,
	SUM(Revenue) AS total_revenue
FROM Company_Financials
GROUP BY Company;

-- 15. Find the average Popularity per Technology (from Technologies).

SELECT
	Technology,
	AVG(Popularity) AS avg_popularity
FROM Technologies
GROUP BY Technology;

-- Type D — GROUP BY with MIN/MAX

-- 16. Find the highest-paid employee's salary per Department.

SELECT
	Department,
	MAX(Salary) AS highest_paid
FROM Employees
GROUP BY Department;

-- 17. Find the largest ContractValue per Industry.

SELECT
	Industry,
	MAX(ContractValue) AS largest_ContractValue
FROM Clients
GROUP BY Industry;

-- 18. Find the smallest Budget per Status.

SELECT
	Status,
	MIN(Budget) AS smallest_budget
FROM Projects
GROUP BY Status;

-- 19. Find the highest Profit per Company.

SELECT 
	Company,
	MAX(Profit) AS highest_profit
FROM Company_Financials
GROUP BY Company;

-- 20. Find the highest Popularity score per Technology.

SELECT
	Technology,
	MAX(Popularity) AS highest_popularity
FROM Technologies
GROUP BY Technology;

-- DAY 3 — Sorting, TOP/LIMIT, String Work

-- Type A — ORDER BY basics

-- 1. Sort Employees by Salary descending.

SELECT *
FROM Employees
ORDER BY Salary DESC;

-- 2. Sort Clients by ContractValue ascending.

SELECT *
FROM Clients
ORDER BY ContractValue ASC;

-- 3. Sort Projects by Budget descending.

SELECT *
FROM Projects
ORDER BY Budget DESC;

-- 4. Sort Company_Financials by Revenue descending.

SELECT *
FROM Company_Financials
ORDER BY Revenue DESC;

-- 5. Sort Technologies by Popularity descending.

SELECT *
FROM Technologies
ORDER BY Popularity DESC;


-- Type B — TOP N

-- 6. Find the top 5 highest-paid employees.

SELECT TOP 5 *
FROM Employees
ORDER BY salary DESC;

-- 7. Find the top 3 clients by ContractValue.

SELECT TOP 3 *
FROM Clients
ORDER BY ContractValue DESC;

-- 8. Find the top 5 projects by Budget.

SELECT TOP 5 *
FROM Projects
ORDER BY Budget DESC;

-- 9. Find the top 3 companies by Revenue in a given year.

SELECT TOP 3 *
FROM Company_Financials
WHERE [Year] = 2020
ORDER BY Revenue DESC;

-- 10. Find the top 5 technologies by Popularity.

SELECT TOP 5 *
FROM Technologies
ORDER BY Popularity;

-- Type C — Multi-column sorting

-- 11. Sort Employees by Department ascending, then Salary descending within each department.

SELECT *
FROM Employees
ORDER BY Department ASC, Salary DESC;

-- 12. Sort Clients by Industry ascending, then ContractValue descending.

SELECT *
FROM Clients
ORDER BY Industry ASC, ContractValue DESC;

-- 13. Sort Projects by Status ascending, then Budget descending.

SELECT *
FROM Projects
ORDER BY Status ASC, Budget DESC;

-- 14. Sort Company_Financials by Company ascending, then Year descending.

SELECT *
FROM Company_Financials
ORDER BY Company, [Year] DESC;

-- 15. Sort Offices by Country ascending, then City ascending.

SELECT *
FROM Office_Locations
ORDER BY Country ASC, City DESC;

-- Type D — String functions

-- 16. Convert all Company names in Clients to uppercase using UPPER().

SELECT
	UPPER(Company) AS Cap_Company_name
FROM Clients;

-- 17. Find the length of each Role value in Employees using LEN().

SELECT
	Role,
	UPPER(Role) As Cap_Role,
	LEN(Role) as Len_of_Role
FROM Employees;

-- 18. Concatenate City and Country from Office_Locations into one column, separated by a comma.

SELECT
	CONCAT(City ,', ', Country)
FROM Office_Locations

-- 19. Extract the first 3 letters of each Technology name using LEFT().

SELECT 
	LEFT(Technology, 3) AS Short_Tech
FROM Technologies;

-- 20. Trim any extra spaces from Company names using TRIM().

SELECT
	TRIM(Company) AS Trimmed
FROM Office_Locations;

-- DAY 4 — Joins / Merge

-- Type A — Basic INNER JOIN (2 tables)

-- 1. Join Projects and Clients on the shared Company column

SELECT *
FROM Projects p

JOIN Clients c
ON p.Client_ID = c.Client_ID;

-- 2. Join Employees and Projects on Employee_ID

SELECT *
FROM Employees e

JOIN Projects p
ON p.Employee_ID = e.Employee_ID;

-- 3. Join Financials and Locations on Company

SELECT *
FROM Company_Financials cf

JOIN Office_Locations ol
ON cf.Company = ol.Company;

-- 4. Join Projects and Technologies on Project_ID

SELECT *
FROM Projects p

JOIN Technologies t
ON p.Project_ID = t.Project_ID;

-- 5. Join Clients and Financials on Company

SELECT *
FROM Clients c

JOIN Company_Financials cf
ON c.Company = cf.Company;

-- Type B — JOIN + WHERE filter

-- 6. Join Projects and Clients, then filter to only clients in the Retail industry.

SELECT p.*, c.Industry
FROM Projects p
JOIN Clients c ON p.Client_ID = c.Client_ID
WHERE Industry = 'Retail';

-- 7. Join Projects and Clients, then filter to only In Progress projects.

SELECT p.*, c.Industry, c.Country
FROM Projects p
JOIN Clients c ON p.Client_ID = c.Client_ID
WHERE Status = 'In Progress';

-- 8. Join Office_Locations and Company_Financials, then filter to only offices in India.

SELECT o.*
FROM Office_Locations o
JOIN Company_Financials cf ON o.Company = cf.Company
WHERE o.Country = 'India';

-- 9. Join Projects and Technologies, then filter to only Azure technology entries.

SELECT p.*, t.Technology
FROM Projects p
JOIN Technologies t ON t.Project_ID = p.Project_ID
WHERE t.Technology = 'Azure';

-- 10. Join Projects and Clients, then filter to only projects with Budget > 5,000,000.

SELECT c.*, p.Budget
FROM Projects p
JOIN Clients c ON p.Client_ID = c.Client_ID
WHERE Budget > '5000000';

-- Type C — JOIN + aggregate

-- 11. Join Projects and Clients, then group by Industry and calculate the total Budget sum.

SELECT 
	c.Industry,
	SUM(p.Budget) AS Total_budget	
FROM Clients c
JOIN Projects p ON c.Client_ID = p.Client_ID
GROUP BY c.Industry;

-- 12. Join Projects and Employees, then group by Department and count the associated projects.

SELECT 
	e.Department, 
	COUNT(p.Project_ID) AS Num_of_projects
FROM Projects p
JOIN Employees e ON p.Employee_ID = e.Employee_ID
GROUP BY e.Department;

-- 13. Join Office_Locations and Company_Financials, then group by Country and calculate the average Revenue.

SELECT 
	ol.Country,
	AVG(cf.Revenue) AS avg_revenue
FROM Office_Locations ol
JOIN Company_Financials cf ON ol.Company = cf.Company
GROUP BY ol.Country;

--

SELECT 
    ol.Country,
    AVG(cf.avg_revenue) AS avg_revenue
FROM Office_Locations ol
JOIN (
    SELECT Company, AVG(Revenue) AS avg_revenue
    FROM Company_Financials
    GROUP BY Company
) cf ON ol.Company = cf.Company
GROUP BY ol.Country;

-- 14. Join Technologies and Projects, then group by project Status and calculate the average Popularity.

SELECT
	AVG(t.Popularity) as avg_popularity,
	p.Status
FROM Technologies t
JOIN Projects p ON t.Project_ID = p.Project_ID
GROUP BY p.Status;

-- 15. Join Projects and Clients, then group by client Country and calculate the average Budget.

SELECT
	c.Country,
	AVG(p.Budget) AS avg_budget
FROM Projects p
JOIN Clients c ON p.Client_ID = c.Client_ID
GROUP BY c.Country;


-- Type D — LEFT JOIN (finding unmatched rows)

-- 16. Left-join Clients with Projects on Client_ID,
--     then find clients where the matching Project_ID is missing

SELECT
	C.*,
	P.Project_ID
FROM Clients C
LEFT JOIN Projects P ON C.Client_ID = P.Client_ID
WHERE P.Project_ID IS NULL

-- 17. Left-join Employees with Projects on Employee_ID,
--     then find employees where the matching project assignment is missing

SELECT
	E.*,
	P.Project_ID
FROM Employees E
LEFT JOIN Projects P ON E.Employee_ID = P.Employee_ID
WHERE P.Project_ID IS NULL;

-- Alternative Approach (NOT IN)

SELECT * 
FROM Employees 
WHERE Employee_ID NOT IN (
    SELECT Employee_ID 
    FROM Projects
);

-- 18. Left-join Company_Financials with Office_Locations on Company (deduplicated),
--     then find financial records where the matching office location is missing

SELECT
	CF.*,
	OL.Office_ID
FROM Company_Financials CF
LEFT JOIN Office_Locations OL ON CF.Employees = OL.Employees
WHERE OL.Office_ID IS NULL;

-- 19. Left-join Technologies with Projects on Project_ID,
--     then find technologies where the matching project is missing

SELECT
    T.*,
    P.Project_ID
FROM Technologies T
LEFT JOIN Projects P ON T.Project_ID = P.Project_ID
WHERE P.Project_ID IS NULL;

-- 20. Left-join Office_Locations with Company_Financials on Company (deduplicated),
--     then find office locations where the matching financial record is missing

SELECT
	CF.*
FROM Company_Financials CF
LEFT JOIN (
    SELECT DISTINCT Company
    FROM Office_Locations
) OL ON CF.Company = OL.Company
WHERE OL.Company IS NULL;


-- DAY 5 — Subqueries & HAVING / Apply & Deeper GroupBy

-- Type A — Subquery in WHERE

-- 1. Find employees whose Salary is above the overall average salary.

SELECT *
FROM Employees
WHERE Salary > ( SELECT
					AVG(Salary) AS avg_sal
					FROM Employees);

-- 2. Find clients whose ContractValue is above the overall average contract value.

SELECT *
FROM Clients
WHERE ContractValue > (SELECT
							AVG(ContractValue) AS avg_contractvale
							FROM Clients);

-- 3. Find projects whose Budget is above the overall average budget.

SELECT *
FROM Projects
WHERE Budget > (SELECT
					AVG(Budget) AS avg_budget
					FROM Projects);

-- 4. Find financial records where Revenue is above the overall average revenue.

SELECT *
FROM Company_Financials
WHERE Revenue > (SELECT
					AVG(Revenue) AS avg_revenue
					FROM Company_Financials);

-- 5. Find technologies where Popularity is above the overall average popularity.

SELECT *
FROM Technologies
WHERE Popularity > (SELECT
						AVG(Popularity) AS avg_popularity
						FROM Technologies);

-- OR 

SELECT *,
       AVG(Popularity) OVER() AS overall_avg_popularity
FROM Technologies
WHERE Popularity > (
    SELECT AVG(Popularity) 
    FROM Technologies
);

-- Type B — HAVING (filtering grouped results)

-- 6. Find departments where average Salary exceeds 60000.

SELECT 
	Department,
	AVG(Salary) AS avg_dept_salary
FROM Employees
GROUP BY Department
HAVING AVG(Salary) > 60000;

-- 7. Find industries where total ContractValue exceeds 100000000.

SELECT 
    Industry, 
    SUM(ContractValue) AS total_contract_value
FROM Clients
GROUP BY Industry
HAVING SUM(ContractValue) > 100000000;

-- 8. Find project statuses where average Budget exceeds 5000000.

SELECT
	Status,
	AVG(Budget) AS avg_budget
FROM Projects
GROUP BY Status
HAVING AVG(Budget) > 5000000;

-- 9. Find companies where total Revenue exceeds 50000.

SELECT
	Company,
	SUM(Revenue) AS avg_revenue
FROM Company_Financials
GROUP BY Company
HAVING SUM(Revenue) > 50000;

-- 10. Find technologies where average Popularity exceeds 50.

SELECT
	Technology,
	AVG(Popularity) AS avg_popularity
FROM Technologies
GROUP BY Technology
HAVING AVG(Popularity) > 50;

-- Type C — CASE WHEN (categorization)


-- 11. Label each employee as 'Senior' if Age > 40, else 'Junior'.

SELECT
	E.*,
	CASE
		WHEN Age > 40 THEN 'SENIOR'
		ELSE 'JUNIOR'
	END AS Eemp_lable
FROM Employees E;

-- 12. Label each client as 'High Value' if ContractValue > 20000000, else 'Standard'.

SELECT
	C.*,
	CASE
		WHEN ContractValue > 20000000 THEN 'High Value'
		ELSE 'Standard'
	END AS client_type
FROM Clients C;

-- 13. Label each project as 'Big Budget' if Budget > 5000000, else 'Small Budget'.

SELECT
	P.*,
	CASE
		WHEN Budget > 5000000 THEN 'Big Budget'
		ELSE 'Small Budget'
	END AS Projec_Budget
FROM Projects P;

-- 14. Label each financial record as 'Profitable' if Profit > 0, else 'Loss'.

SELECT
	CF.*,
	CASE
		WHEN Profit > 0 THEN 'Profitable'
		ELSE 'Loss'
	END AS Financial_Status
FROM Company_Financials CF;

-- 15. Label each technology as 'Popular' if Popularity > 50, else 'Niche'.

SELECT
	T.*,
	CASE 
		WHEN Popularity > 50 THEN 'Popular'
		ELSE 'Niche'
	END AS Popularity_Status
FROM Technologies T;

-- Type D — Correlated subquery (per-group comparison)

-- 16. Find employees earning more than the average salary within their own department.

SELECT * 
FROM Employees e 
WHERE salary > (
    SELECT AVG(salary) 
    FROM Employees 
    WHERE Department = e.Department
);

-- 17. Find clients whose ContractValue is above the average within their own industry.

SELECT *
--	AVG(C.ContractValue) AS Avg_ContractValue
FROM Clients C
WHERE ContractValue > (SELECT 
							AVG(ContractValue)
					   FROM Clients
					   WHERE Industry = C.Industry);

-- OR

WITH RankedClients AS (
    SELECT *,
           AVG(ContractValue) OVER(PARTITION BY Industry) AS AvgContractValue
    FROM Clients
)
SELECT * 
FROM RankedClients
WHERE ContractValue > AvgContractValue;

-- 18. Find projects whose Budget is above the average within their own status group.

SELECT *
FROM Projects P
WHERE Budget > (SELECT
					AVG(Budget)
				FROM Projects
				WHERE Status = P.Status);

-- 19. Find financial records above the average revenue within their own company.

SELECT *
FROM Company_Financials CF
WHERE Revenue > (SELECT
					AVG(Revenue)
				 FROM Company_Financials
				 WHERE Company = CF.Company);

-- 20. Find technologies above the average popularity within their own company.

SELECT *
FROM Technologies T
WHERE Popularity > (SELECT
						AVG(Popularity)
					FROM Technologies
					WHERE Company = T.Company);


-- ## DAY 6 — Window Functions / Combining Files & Reshaping

-- ### SQL

-- **Type A — RANK() / ROW_NUMBER() within a group**

-- 1. Rank employees within each Department by Salary descending
SELECT *,
    RANK() OVER (PARTITION BY Department ORDER BY Salary DESC) AS salary_rank
FROM Employees;

-- 2. Rank clients within each Industry by ContractValue descending
SELECT *,
    RANK() OVER (PARTITION BY Industry ORDER BY ContractValue DESC) AS contractvalue_rank
FROM Clients;

-- 3. Rank projects within each Status by Budget descending
SELECT *,
    RANK() OVER (PARTITION BY Status ORDER BY Budget DESC) AS budget_rank
FROM Projects;

-- 4. Rank financial records within each Company by Revenue descending
SELECT *,
    RANK() OVER (PARTITION BY Company ORDER BY Revenue DESC) AS revenue_rank
FROM Company_Financials;

-- 5. Rank technologies within each Company by Popularity descending
SELECT *,
    RANK() OVER (PARTITION BY Company ORDER BY Popularity DESC) AS popularity_rank
FROM Technologies;

-- 5.1. Rank technologies within each Technology name by Popularity descending

SELECT *,
	RANK() OVER (PARTITION BY Technology ORDER BY Popularity DESC) AS popularity_rank
	-- Groups rows by technology, sorts by highest popularity, and assigns a rank
FROM Technologies;

-- 5.2. Rank financial records within each Year by Revenue descending

SELECT *,
	RANK() OVER (PARTITION BY Year ORDER BY Revenue DESC) AS revenue_rank
FROM Company_Financials;

-- 5.3. Rank offices within each State by Employees descending

SELECT *,
	RANK() OVER (PARTITION BY State ORDER BY Employees DESC) AS employee_rank
FROM Office_Locations;

-- 5.4. Rank employees within each Company by Salary descending

SELECT *,
	RANK() OVER (PARTITION BY Company ORDER BY Salary DESC) AS salary_rank
FROM Employees;

-- 6. Top 2 highest-paid employees in each Department
WITH ranked_employees AS (
    SELECT *,
        ROW_NUMBER() OVER (PARTITION BY Department ORDER BY Salary DESC) AS rn
    FROM Employees
)
SELECT * FROM ranked_employees WHERE rn <= 2;

-- 7. Top 2 highest-value clients in each Industry
WITH ranked_clients AS (
    SELECT *,
        ROW_NUMBER() OVER (PARTITION BY Industry ORDER BY ContractValue DESC) AS rn
    FROM Clients
)
SELECT * FROM ranked_clients WHERE rn <= 2;

-- 8. Top 2 highest-budget projects in each Status
WITH ranked_projects AS (
    SELECT *,
        ROW_NUMBER() OVER (PARTITION BY Status ORDER BY Budget DESC) AS rn
    FROM Projects
)
SELECT * FROM ranked_projects WHERE rn <= 2;

-- 9. Top 2 highest-revenue records for each Company
WITH ranked_financials AS (
    SELECT *,
        ROW_NUMBER() OVER (PARTITION BY Company ORDER BY Revenue DESC) AS rn
    FROM Company_Financials
)
SELECT * FROM ranked_financials WHERE rn <= 2;

-- 10. Top 2 most popular technologies for each Company
WITH ranked_tech AS (
    SELECT *,
        ROW_NUMBER() OVER (PARTITION BY Company ORDER BY Popularity DESC) AS rn
    FROM Technologies
)
SELECT * FROM ranked_tech WHERE rn <= 2;

-- 10.1. Top 3 highest-salary employees in each Role



-- 10.2. Top 2 highest-employee-count offices in each Country



-- 10.3. Top 3 highest-budget projects in each Company



-- 10.4. Top 2 highest-revenue financial records in each Year




-- **Type C — Running totals (SUM() OVER)**
-- 11. Calculate a running total of `Salary` ordered by `Employee_ID`.
-- 12. Calculate a running total of `ContractValue` ordered by `Client_ID`.
-- 13. Calculate a running total of `Budget` ordered by `Project_ID`.
-- 14. Calculate a running total of `Revenue` per `Company`, ordered by `Year`.
-- 15. Calculate a running total of `Popularity` ordered by `Technology_ID`.

-- **Type D — Percentage of group total (SUM() OVER PARTITION BY)**
-- 16. Show each employee's `Salary` as a percentage of their department's total salary.
-- 17. Show each client's `ContractValue` as a percentage of their industry's total.
-- 18. Show each project's `Budget` as a percentage of its status group's total.
-- 19. Show each financial record's `Revenue` as a percentage of its company's total revenue.
-- 20. Show each technology's `Popularity` as a percentage of its company's total popularity.
