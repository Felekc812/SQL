SELECT COALESCE (person_name, '-'), visit_date, COALESCE(pizzeria_name, '-') 
FROM (
SELECT person.name as person_name, visit_date, pizzeria.name as pizzeria_name
FROM person
full outer join
(Select * from
person_visits
WHERE visit_date >= '2022.01.01' and 
visit_date <= '2022.01.03' or
visit_date is null) as d
ON person.id = person_id
full outer join
pizzeria ON pizzeria.id = pizzeria_id
ORDER BY person.name NULLS FIRST, visit_date, pizzeria.name) AS t



