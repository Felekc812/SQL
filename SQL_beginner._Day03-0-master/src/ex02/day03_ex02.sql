SELECT pizza_name, price, pizzeria.name AS pizzeria_name
FROM menu 
FULL OUTER JOIN person_order  ON menu.id = person_order.menu_id
FULL OUTER JOIN pizzeria  ON pizzeria.id = pizzeria_id
WHERE person_order.order_date IS NULL
ORDER BY pizza_name, price
