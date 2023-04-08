INSERT INTO person_discounts
SELECT ROW_NUMBER() OVER () AS id,
  person_order.person_id,
  menu.pizzeria_id,
  (CASE
      WHEN COUNT(person_order.id) = 1 THEN 10.5
      WHEN COUNT(person_order.id) = 2 THEN 22
      WHEN COUNT(person_order.id) = 3 THEN 30
    END) AS discont
FROM person_order
INNER JOIN menu on menu.id = person_order.menu_id
GROUP BY person_id, pizzeria_id
ORDER BY person_id, pizzeria_id;

SELECT *
FROM person_discounts;