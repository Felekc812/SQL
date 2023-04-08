(SELECT pizzeria.name, COUNT (person_order.order_date),  'order' AS action_type
FROM pizzeria
INNER JOIN menu ON menu.pizzeria_id = pizzeria.id
INNER JOIN person_order ON person_order.menu_id = menu.id
GROUP BY pizzeria.name
ORDER BY count DESC
LIMIT 3)
UNION ALL
(SELECT pizzeria.name, COUNT (person_visits.visit_date),  'visit' AS action_type
FROM pizzeria
INNER JOIN person_visits ON person_visits.pizzeria_id = pizzeria.id
GROUP BY pizzeria.name
ORDER BY count DESC
LIMIT 3)




