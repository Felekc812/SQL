SELECT person_id FROM (
SELECT  order_date, person_id
FROM person_order
EXCEPT ALL
SELECT  visit_date, person_id
FROM person_visits) AS date
WHERE date.order_date = '2022.01.7'