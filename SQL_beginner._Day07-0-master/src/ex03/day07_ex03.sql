((SELECT date.name AS name,
count (*) AS total_count
FROM
((SELECT pizzeria.name FROM pizzeria , person_visits
 WHERE pizzeria.id = person_visits.pizzeria_id)
 UNION ALL
 (SELECT pizzeria.name
 FROM pizzeria, person_order, menu 
 WHERE pizzeria.id = menu.pizzeria_id and menu.id = person_order.menu_id)) AS date
 GROUP BY date.name
 order by date.name)
 UNION ALL
 SELECT ex.name AS name, '0' AS total_count FROM
 ((SELECT pizzeria.name FROM pizzeria
 EXCEPT
 (SELECT date.name
FROM
((SELECT pizzeria.name FROM pizzeria, person_visits 
 WHERE pizzeria.id = person_visits.pizzeria_id)
 UNION ALL
 
 (SELECT pizzeria.name
 FROM pizzeria, person_order , menu
 WHERE pizzeria.id = menu.pizzeria_id and menu.id = person_order.menu_id)) AS date
 ))) AS ex)
order by total_count desc, name;