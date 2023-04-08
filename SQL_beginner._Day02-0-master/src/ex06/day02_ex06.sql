SELECT pizza_name, 
(SELECT name FROM pizzeria WHERE pizzeria_id = pizzeria.id) AS pizzeria_name
FROM menu
JOIN person_order  ON person_order.menu_id = menu.id
JOIN person ON person.id = person_order.person_id
WHERE person.name = 'Anna' OR person.name = 'Denis'
ORDER BY pizza_name, pizzeria_name;