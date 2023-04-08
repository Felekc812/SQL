SELECT person.name AS person_name, menu.pizza_name AS pizza_name,pi.name AS pizzeria_name
FROM person 
JOIN person_order ON person.id = person_order.person_id
JOIN menu  ON menu.id = person_order.menu_id
JOIN pizzeria pi ON menu.pizzeria_id = pi.id
ORDER BY person_name,pizza_name,pizzeria_name
