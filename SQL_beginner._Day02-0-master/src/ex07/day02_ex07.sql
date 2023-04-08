SELECT pizzeria.name AS pizzeria_name
FROM person_visits 
JOIN person on person.id = person_visits.person_id 
JOIN pizzeria on pizzeria.id = person_visits.pizzeria_id
WHERE EXISTS 
(SELECT pizzeria_id 
FROM menu
WHERE menu.pizzeria_id = person_visits.pizzeria_id and menu.price < 800)
and person_visits.visit_date = '2022.01.08' and person.name = 'Dmitriy';