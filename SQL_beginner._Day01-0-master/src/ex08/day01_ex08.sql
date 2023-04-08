SELECT order_date, name|| '(age:' || age ||')' AS person_information
FROM (
SELECT * 
FROM person_order AS a
NATURAL JOIN (
SELECT name,age,id AS person_id 
FROM person )AS date )AS date2
ORDER BY order_date,person_information;
