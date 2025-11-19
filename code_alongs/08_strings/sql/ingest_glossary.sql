-- ingest data into duckdb database 
CREATE SCHEMA IF NOT EXISTS staging;

-- skapa tabell, schema table
CREATE TABLE
    IF NOT EXISTS staging.sql_glossary AS (
        SELECT
            *
        FROM
            read_csv_auto ('data/sql_terms.csv')
    );