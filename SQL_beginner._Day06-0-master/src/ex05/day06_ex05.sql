COMMENT ON TABLE person_discounts IS 'Таблица скидок';
COMMENT ON COLUMN person_discounts.person_id IS 'Интификатор пользователя';
COMMENT ON COLUMN person_discounts.pizzeria_id IS 'Интификатор пицерии';
COMMENT ON COLUMN person_discounts.discount IS 'РАсчитанный рахмер скидки';
COMMENT ON COLUMN person_discounts.id IS 'Интификатор полей';

SELECT *
FROM person_discounts;