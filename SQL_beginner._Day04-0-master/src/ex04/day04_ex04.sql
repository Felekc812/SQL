CREATE VIEW v_symmetric_union
AS (SELECT person_id 
FROM (SELECT *
FROM person_visits
WHERE visit_date = '2022-01-02'
EXCEPT
SELECT *
FROM person_visits
WHERE visit_date = '2022-01-06') AS date1 )
UNION
(SELECT person_id FROM (SELECT *
FROM person_visits
WHERE visit_date = '2022-01-06'
EXCEPT
SELECT *
FROM person_visits
WHERE visit_date = '2022-01-02') AS date2)
ORDER BY 1;

SELECT *
FROM v_symmetric_union;