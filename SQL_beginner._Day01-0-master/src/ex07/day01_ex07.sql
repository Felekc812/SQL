SELECT order_date, (name || '(age:' || age || ')' ) AS person_information
FROM person, person_order
WHERE person_id = person.id
ORDER BY order_date, person_information