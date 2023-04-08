SELECT *
FROM (
SELECT person.name, COUNT(visit_date) AS count_of_visits
FROM person_visits
INNER JOIN person ON person.id = person_visits.person_id
GROUP BY person.name ) AS date
WHERE count_of_visits > 3;
