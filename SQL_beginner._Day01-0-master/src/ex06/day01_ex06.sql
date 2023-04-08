SELECT date.action_date, date.person_name
FROM(
SELECT  order_date as action_date, person_id,
(SELECT name
FROM person
WHERE person.id = person_id) as person_name
FROM person_order
INTERSECT
SELECT  visit_date as action_date, person_id,
(SELECT name
FROM person
WHERE person.id = person_id) as person_name
FROM person_visits
ORDER BY action_date ASC, person_name DESC) AS date