CREATE OR REPLACE FUNCTION fnc_fibonacci(pstop integer DEFAULT 10) 
RETURNS SETOF integer LANGUAGE SQL AS $$ WITH RECURSIVE c (a, b) AS ( VALUES(0, 1)
UNION ALL
SELECT greatest(a, b), a + b as a
FROM c
WHERE b < pstop)
SELECT a
FROM c;
$$;
SELECT *
FROM fnc_fibonacci(100);
SELECT *
FROM fnc_fibonacci();
DROP FUNCTION fnc_fibonacci(integer);