create or replace function fnc_trg_person_delete_audit() returns trigger AS
$$
begin
INSERT INTO person_audit(type_event, row_id, name, age, gender, address)
VALUES ('D', OLD.id, OLD.name, OLD.age, OLD.gender, OLD.address);
RETURN OLD;
end;
$$ LANGUAGE plpgsql;

create trigger trg_person_delete_audit
AFTER delete ON person
FOR EACH ROW
EXECUTE PROCEDURE fnc_trg_person_delete_audit();

DELETE FROM person WHERE id = 10;
INSERT INTO person(id, name, age, gender, address) VALUES (10,'Damir', 22, 'male', 'Irkutsk');
select * from person_audit;
