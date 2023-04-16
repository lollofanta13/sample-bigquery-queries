SELECT
  country_name,
  cumulative_confirmed AS total_cases
FROM
  `bigquery-public-data.covid19_open_data.covid19_open_data`
WHERE
  date = (
    SELECT
      MAX(date)
    FROM
      `bigquery-public-data.covid19_open_data.covid19_open_data`
    )
ORDER BY
  total_cases DESC
