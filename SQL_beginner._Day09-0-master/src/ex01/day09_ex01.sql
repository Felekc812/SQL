create or replace function fnc_trg_person_update_audit() returns trigger AS
$$
begin
    INSERT INTO person_audit(type_event, row_id, name, age, gender, address)
    VALUES ('U', OLD.id, OLD.name, OLD.age, OLD.gender, OLD.address);
    RETURN NEW;
end;
$$ LANGUAGE plpgsql;

create trigger trg_person_update_audit
    AFTER update ON person
    FOR EACH ROW
    EXECUTE PROCEDURE fnc_trg_person_update_audit();

UPDATE person SET name = 'Bulat' WHERE id = 10;
UPDATE person SET name = 'Damir' WHERE id = 10;

SELECT *
FROM person_audit;