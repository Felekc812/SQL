
--1
SHOW TRANSACTION ISOLATION LEVEL;
SELECT * FROM pizzeria WHERE name  = 'Pizza Hut';

UPDATE pizzeria
SET rating = 4
WHERE name = 'Pizza Hut';


--2
SHOW TRANSACTION ISOLATION LEVEL;
SELECT * FROM pizzeria WHERE name  = 'Pizza Hut';

UPDATE pizzeria
SET rating = 3.6
WHERE name = 'Pizza Hut';
