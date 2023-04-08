INSERT INTO person_visits(id, person_id, pizzeria_id, visit_date)
VALUES ((SELECT MAX(person_visits.id) + 1 FROM person_visits),
(SELECT person.id FROM person  WHERE person.name = 'Dmitriy'),
(SELECT 
pizzeria.id
FROM pizzeria 
INNER JOIN menu on  pizzeria.id = menu.pizzeria_id
WHERE menu.price < 800 AND pizzeria.name != 'Papa Johns'
LIMIT 1), DATE('2022-01-08'));
REFRESH MATERIALIZED VIEW mv_dmitriy_visits_and_eats;

SELECT *
FROM mv_dmitriy_visits_and_eats;