 SELECT  DISTINCT person.id
 FROM person  JOIN person_visits ON person.id = person_visits.person_id 
 WHERE visit_date BETWEEN '2022.01.6' AND '2022.01.09' OR pizzeria_id = 2 
 ORDER BY person.id DESC 
