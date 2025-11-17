-- throws away a table
DROP TABLE database.sql; 

-- gives dependency error because the schema is not empty
DROP SCHEMA programming CASCADE;


-- to delete this schema and all its content
DROP SCHEMA database_schema CASCADE;