SELECT person.address, pizzeria.name,
COUNT(pizzeria.name) AS count_of_orders
FROM person_order 
INNER JOIN person  ON person_order.person_id = person.id
INNER JOIN menu on menu.id = person_order.menu_id
INNER JOIN pizzeria on menu.pizzeria_id = pizzeria.id
GROUP BY pizzeria.name, person.address
ORDER BY person.address, pizzeria.name