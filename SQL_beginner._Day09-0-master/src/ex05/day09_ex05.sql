drop function fnc_persons_female, fnc_persons_male;

CREATE or replace FUNCTION fnc_persons(IN pgender varchar DEFAULT 'female') RETURNS TABLE (id bigint,
  		name varchar,
  		age integer,
  		gender varchar,
  		address varchar) AS
$$
    SELECT * FROM person WHERE gender = pgender;
$$ language sql;

SELECT *
FROM fnc_persons();

select *
from fnc_persons(pgender := 'male');