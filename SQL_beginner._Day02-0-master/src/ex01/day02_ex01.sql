SELECT date as missing_date
FROM(SELECT *
FROM person_visits
WHERE person_id = 1 OR person_id = 2) as q
right JOIN
(select date::date
from generate_series('2022.01.01', '2022.01.10', interval '1 day') as date) as g
ON q.visit_date = g.date
WHERE q.visit_date IS NULL