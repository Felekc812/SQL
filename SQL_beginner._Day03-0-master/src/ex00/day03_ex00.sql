SELECT pizza_name, price, pizzeria.name as pizzeria_name, visit_date
FROM menu
JOIN
pizzeria ON pizzeria.id = menu.pizzeria_id
JOIN
person_visits ON person_visits.pizzeria_id = pizzeria.id
JOIN
person ON person.id = person_visits.person_id
WHERE person.name = 'Kate' and price>=800 and price <=1000
ORDER BY pizza_name, price, pizzeria_name