DROP FUNCTION IF EXISTS fnc_person_visits_and_eats_on_date (character varying, numeric, date);
CREATE OR REPLACE FUNCTION fnc_person_visits_and_eats_on_date (
pperson varchar DEFAULT 'Dmitriy', pprice numeric DEFAULT 500,  pdate date DEFAULT '2022-01-08') 
RETURNS TABLE (name varchar) AS $$ BEGIN RETURN QUERY
SELECT pizzeria.name
FROM (
SELECT person_visits.pizzeria_id
FROM person_visits 
JOIN person ON person_visits.person_id = person.id
WHERE person_visits.visit_date = pdate AND person.name = pperson
INTERSECT SELECT menu.pizzeria_id
FROM person_order
JOIN menu ON person_order.menu_id =menu.id
JOIN person  ON person_order.person_id = person.id
WHERE menu.price < pprice AND person.name = pperson AND person_order.order_date = pdate) AS pvp
JOIN pizzeria ON pizzeria.id = pvp.pizzeria_id;
END;
$$ LANGUAGE plpgsql;

SELECT *
FROM fnc_person_visits_and_eats_on_date (pprice := 800);

SELECT *
FROM fnc_person_visits_and_eats_on_date (pperson := 'Anna', pprice := 1300, pdate := '2022-01-01');