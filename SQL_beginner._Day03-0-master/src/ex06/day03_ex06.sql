SELECT menu.pizza_name, pizzeria.name AS pizzeria_name_1, pizzeria1.name 
AS pizzeria_name_2, menu.price
FROM menu 
JOIN menu menu2 on menu.price = menu2.price 
AND menu.pizza_name = menu2.pizza_name AND menu2.id < menu.id
JOIN pizzeria pizzeria on pizzeria.id = menu.pizzeria_id
JOIN pizzeria pizzeria1 on pizzeria1.id = menu2.pizzeria_id
order by menu.pizza_name