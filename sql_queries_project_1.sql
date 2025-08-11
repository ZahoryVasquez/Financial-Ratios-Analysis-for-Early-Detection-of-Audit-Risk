--QUESTION 1 
-- How many companies are bankrupt and how many are  healthy?
SELECT
    CASE
        WHEN `Bankrupt?` = 1 THEN 'Bankrupt'
        WHEN `Bankrupt?` = 0 THEN 'Healthy'
    END AS company_status,
    COUNT(*) AS total_companies
FROM cleaned_data
GROUP BY `Bankrupt?`;

--QUESTION 2
---2. What is the average ROA for bankrupt and healthy companies ?
SELECT
"Bankrupt?",
AVG ("ROA") AS avg_roa
FROM cleaned_data
GROUP BY "Bankrupt?";

--3. What is the average Current Ratio by bankruptcy status?
SELECT "Bankrupt?", AVG("Current Ratio") AS avg_current_ratio
FROM cleaned_data
GROUP BY "Bankrupt?";

--4. What is the average Debt Ratio for companies that went bankrupt?
SELECT AVG("Debt Ratio") AS avg_debt_ratio_bankrupt
FROM cleaned_data
WHERE "Bankrupt?" = 1;

--5. How many companies have a Current Ratio below 1.0, grouped by bankruptcy status?
SELECT "Bankrupt?", COUNT(*) AS count_low_current_ratio
FROM cleaned_data
WHERE "Current Ratio" < 1.0
GROUP BY "Bankrupt?";

--6. What is the average Total Asset Turnover for healthy companies?
SELECT AVG("Total Asset Turnover") AS avg_asset_turnover_healthy
FROM cleaned_data
WHERE "Bankrupt?" = 0;

--7. What percentage of companies with Debt Ratio above 0.5 are bankrupt?
SELECT 
    SUM(CASE WHEN "Bankrupt?" = 1 THEN 1 ELSE 0 END)*100.0 / COUNT(*) AS pct_bankrupt_high_debt
FROM cleaned_data
WHERE "Debt Ratio" > 0.5;

--8. What is the median ROA of all companies? 

SELECT AVG(ROA) AS median_roa
FROM (
    SELECT ROA
    FROM cleaned_data
    WHERE ROA IS NOT NULL
    ORDER BY ROA
    LIMIT 2 - (SELECT COUNT(*) FROM cleaned_data WHERE ROA IS NOT NULL) % 2
    OFFSET (SELECT (COUNT(*) - 1) / 2 FROM cleaned_data WHERE ROA IS NOT NULL)
);
--9. How many companies have a Total Asset Turnover greater than 1.5 and are healthy?
SELECT COUNT(*) AS count_healthy_high_turnover
FROM cleaned_data
WHERE "Total Asset Turnover" > 1.5 AND "Bankrupt?" = 0;

--10. What is the correlation between ROA and Debt Ratio for the entire dataset? 
SELECT 
    (AVG("ROA" * "Debt Ratio") - AVG("ROA") * AVG("Debt Ratio")) /
    (SQRT(AVG("ROA" * "ROA") - AVG("ROA") * AVG("ROA")) *
     SQRT(AVG("Debt Ratio" * "Debt Ratio") - AVG("Debt Ratio") * AVG("Debt Ratio"))) 
    AS roa_debt_corr
FROM cleaned_data
WHERE "ROA" IS NOT NULL AND "Debt Ratio" IS NOT NULL;










