SELECT person.name
FROM person
WHERE person.gender = 'male' AND person.address IN ('Moscow', 'Samara') AND
EXISTS 
(select person_id 
FROM person_order, menu  
where person.id = person_order.person_id
and menu.id = person_order.menu_id AND menu.pizza_name IN ('pepperoni pizza', 'mushroom pizza'))
ORDER BY name DESC;