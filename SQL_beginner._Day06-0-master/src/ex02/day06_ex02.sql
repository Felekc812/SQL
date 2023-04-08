SELECT person.name, pizza_name, menu.price, ROUND (menu.price-(menu.price*discount/100)) AS discount_price, pizzeria.name
FROM person_order
JOIN person_discounts ON person_order.person_id = person_discounts.person_id
JOIN person ON person.id = person_order.person_id
JOIN menu ON menu.id = person_order.menu_id
JOIN pizzeria ON pizzeria.id = menu.pizzeria_id
ORDER BY 1,2;