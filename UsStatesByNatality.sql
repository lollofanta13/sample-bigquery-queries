SELECT
  state,
  COUNT(*) AS natality
FROM
  `bigquery-public-data.samples.natality`
WHERE
  year >= 2000
  AND state IS NOT NULL
GROUP BY
  state
ORDER BY
  natality DESC
