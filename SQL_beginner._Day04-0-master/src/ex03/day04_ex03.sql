 SELECT *
 FROM v_generated_dates
 EXCEPT
 SELECT visit_date AS missing_date
 FROM person_visits
 ORDER BY 1