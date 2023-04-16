-- Query done on April 16th 2023
SELECT 
   term AS Top_Term,
   COUNT(term) AS frequency
FROM `bigquery-public-data.google_trends.top_terms`
WHERE
   refresh_date >= DATE_SUB(CURRENT_DATE(), INTERVAL 2 YEAR)
   -- Filter to the last 2 weeks.
GROUP BY Top_Term
ORDER BY frequency DESC
LIMIT 1000
