--1
BEGIN;

UPDATE pizzeria
SET rating = 5
WHERE name = 'Pizza Hut';

SELECT *
FROM pizzeria
WHERE name = 'Pizza Hut';

COMMIT;


--2
BEGIN;

SELECT *
FROM pizzeria
WHERE name = 'Pizza Hut';
