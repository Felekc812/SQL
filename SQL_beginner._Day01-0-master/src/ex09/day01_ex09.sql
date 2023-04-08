SELECT pizzeria.name
FROM pizzeria
WHERE pizzeria.id 
NOT IN (
SELECT pizzeria_id
FROM person_visits);

SELECT p.name
FROM pizzeria p
WHERE 
NOT EXISTS(
SELECT pizzeria_id
FROM person_visits
WHERE pizzeria_id = p.id);
