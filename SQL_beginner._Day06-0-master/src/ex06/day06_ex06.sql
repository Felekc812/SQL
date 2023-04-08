CREATE SEQUENCE seq_person_discounts START with 1 
OWNED BY person_discounts.id;
SELECT setval('seq_person_discounts', 
(SELECT max(pd.id) 
FROM person_discounts pd));
ALTER TABLE person_discounts
ALTER COLUMN id SET DEFAULT (nextval('seq_person_discounts'));