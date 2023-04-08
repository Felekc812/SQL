(SELECT pizzeria.name AS pizzeria_name
FROM person_visits person_visits, person, pizzeria pizzeria
where person_visits.person_id = person.id and person.name = 'Andrey' and pizzeria.id = person_visits.pizzeria_id)
EXCEPT
(SELECT pizzeria.name AS pizzeria_name
FROM person_order person_order, person, menu m, pizzeria pizzeria
where person_order.person_id = person.id and person.name = 'Andrey' and m.id = person_order.menu_id and pizzeria.id = m.pizzeria_id)
order by pizzeria_name;