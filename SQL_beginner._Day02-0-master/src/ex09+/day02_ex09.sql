SELECT person.name
FROM person 
WHERE person.gender = 'female'
AND EXISTS 
(SELECT person_id 
FROM person_order, menu 
WHERE person.id = person_order.person_id AND menu.id = person_order.menu_id AND menu.pizza_name = 'cheese pizza')
AND EXISTS 
(SELECT person_id 
FROM person_order person_order, menu 
WHERE person.id = person_order.person_id
AND menu.id = person_order.menu_id AND menu.pizza_name = 'pepperoni pizza')
ORDER BY name;