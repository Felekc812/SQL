
CREATE or replace FUNCTION fnc_persons_female() RETURNS TABLE (id bigint,
  		name varchar, age integer, gender varchar,	address varchar) AS
$$
    SELECT * FROM person WHERE gender = 'female';
$$ language sql;

CREATE or replace FUNCTION fnc_persons_male() returns TABLE (id bigint,
  		name varchar, age integer, gender varchar,	address varchar) AS
$$
    SELECT * FROM person WHERE gender = 'male';
$$ language sql;


SELECT *
FROM fnc_persons_male();

SELECT *
FROM fnc_persons_female();