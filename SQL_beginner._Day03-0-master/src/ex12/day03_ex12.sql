INSERT INTO person_order
SELECT (SELECT MAX(person_order.id) + date.id FROM person_order ),
       date.id,
       (SELECT id FROM menu WHERE pizza_name = 'greek pizza'),
       '2022-02-25'
  FROM GENERATE_SERIES(1, (SELECT MAX(id) FROM person)) AS date(id);

SELECT *
FROM person_order;
