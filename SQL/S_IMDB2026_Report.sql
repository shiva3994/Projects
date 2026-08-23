SELECT *
FROM dbo.IMDB2026;


-- 1. Which genre has the highest average `Averagerating` (with at least 5 movies in that genre)?

SELECT TOP 05
        Genres,
        AVG(Averagerating) AS AvgRating
FROM dbo.IMDB2026
GROUP BY Genres
HAVING COUNT(*) >= 5
ORDER BY AvgRating DESC;


-- 2. What is the highest-grossing movie per decade? (`GROUP BY` decade, `MAX(Grossworldwide)`, join back to get the title.)

SELECT DISTINCT
        (Startyear / 10) * 10 AS Decade,
        Primarytitle,
        Grossworldwide
FROM dbo.IMDB2026
WHERE Grossworldwide IN (SELECT MAX(Grossworldwide) -- This subquery finds the maximum gross for each decade
                         FROM dbo.IMDB2026
                         GROUP BY (Startyear / 10) * 10)
ORDER BY Decade DESC;


-- 3. Which movies had the best "return ratio" (`Grossworldwide / Budget`), and does that correlate with rating?

SELECT DISTINCT TOP 10
        Primarytitle,
        (Grossworldwide / Budget) as Returnratio,
        Averagerating
FROM dbo.IMDB2026
ORDER BY Returnratio DESC;


-- 4. How many Top 250 movies fall into each `Contentrating` (R, PG-13, etc.), and what's their average rating per category?

SELECT
        Contentrating,
        COUNT(*) as InContentrating,
        AVG(Averagerating) as Avgrating
FROM dbo.IMDB2026
GROUP BY Contentrating;


-- 5. Group movies into runtime buckets (e.g. <90 min, 90–120, 120–150, 150+) and 
-- find the average rating per bucket — do longer movies rate higher?

SELECT 
    CASE 
        WHEN Runtimeminutes < 90 THEN '<90 min'
        WHEN Runtimeminutes BETWEEN 90 AND 119 THEN '90-120 min'
        WHEN Runtimeminutes BETWEEN 120 AND 149 THEN '120-150 min'
        ELSE '150+ min'
    END AS RuntimeBucket,
    COUNT(*) AS MovieCount,
    AVG(Averagerating) AS AvgRating
FROM dbo.IMDB2026
GROUP BY 
    CASE 
        WHEN Runtimeminutes < 90 THEN '<90 min'
        WHEN Runtimeminutes BETWEEN 90 AND 119 THEN '90-120 min'
        WHEN Runtimeminutes BETWEEN 120 AND 149 THEN '120-150 min'
        ELSE '150+ min'
    END
ORDER BY MIN(Runtimeminutes);


-- 6. Write a query to count and list which movies are missing `Budget`,`Metascore`,`Releasedate` useful as a data-quality check before deeper analysis.

SELECT 
    Primarytitle,
    CASE WHEN Budget IS NULL THEN 'Missing' ELSE 'OK' END AS BudgetStatus,
    CASE WHEN Metascore IS NULL THEN 'Missing' ELSE 'OK' END AS MetascoreStatus,
    CASE WHEN Releasedate IS NULL THEN 'Missing' ELSE 'OK' END AS ReleasedateStatus
FROM dbo.IMDB2026
WHERE Budget IS NULL OR Metascore IS NULL OR Releasedate IS NULL
ORDER BY Primarytitle;