SET enable_seqscan = off;
EXPLAIN (ANALYZE)
SELECT pizza_name,
    p.name AS pizzeria_name
FROM menu m
    INNER JOIN pizzeria p ON m.pizzeria_id = p.id;