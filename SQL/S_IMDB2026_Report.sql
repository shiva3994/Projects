CREATE DATABASE IMDB2026_Report;



-- 1. **Top-rated genre** – Which genre has the highest average `Averagerating` (with at least 5 movies in that genre)?




-- 2. **Decade leaders** – What is the highest-grossing movie per decade? (`GROUP BY` decade, `MAX(Grossworldwide)`, join back to get the title.)


-- 3. **Budget efficiency** – Which movies had the best "return ratio" (`Grossworldwide / Budget`), and does that correlate with rating?


-- 4. **Content rating breakdown** – How many Top 250 movies fall into each `Contentrating` (R, PG-13, etc.), and
-- what's their average rating per category?


-- 5. **Prolific production companies** – Which production companies appear most often across the Top 250? 
-- (Requires unpacking the `Productioncompanies` field into a junction table.)


-- 6. **Runtime buckets** – Group movies into runtime buckets (e.g. <90 min, 90–120, 120–150, 150+) and 
-- find the average rating per bucket — do longer movies rate higher?


-- 7. **Missing data audit** – Write a query to count and list which movies are missing `Budget`, `Metascore`, 
-- or `Releasedate` — useful as a data-quality check before deeper analysis.
