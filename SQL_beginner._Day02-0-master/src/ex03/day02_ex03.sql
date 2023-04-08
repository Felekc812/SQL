WITH TABLE_DATE(dates) AS (
SELECT
generate_series( '2022.01.01', '2022.01.10', interval '1 day') as d)
SELECT dates::date
FROM TABLE_DATE
LEFT JOIN (SELECT visit_date
FROM person_visits
WHERE person_visits.person_id = 1
OR person_visits.person_id = 2) AS p_v
ON p_v.visit_date = dates
WHERE p_v.visit_date IS NULL
ORDER BY dates

