CREATE INDEX IF NOT EXISTS idx_person_name ON person(name);

SET enable_seqscan = off;
EXPLAIN (ANALYZE)
SELECT name
FROM person
WHERE UPPER(name) = 'KATE';