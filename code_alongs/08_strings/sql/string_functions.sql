-- remove leading and trailing spaces 
SELECT
    trim(sql_word, ' ') as trimmed_word,
    trimmed_word[1] as frist_character, 
    trimmed_word[-1] as last_character, 
FROM
    staging.sql_glossary; 


-- transform character to uppercase 
SELECT
    upper(trim(sql_word, ' ')) as sql_term,
    sql_term[1] as frist_character, 
    sql_term[-1] as last_character, 
FROM
    staging.sql_glossary; 

-- replace 2 more spaces with 1 space 
SELECT
    description, 
    replace(TRIM(description), '  ', ' ') as cleaned_description
    FROM staging.sql_glossary; 


-- concatenate string 
SELECT
    concat(upper(trim(sql_word, ' ')), ' command') AS "sql.command"
FROM
    staging.sql_glossary;


-- extract substrings
SELECT 
    trim(sql_word) AS trimmed_word,
    substring(trim(sql_word), 1, 5) AS first_five_chars,
    substring(trim(sql_word), 1, 5) AS sliced_five_chars
FROM staging.sql_glossary;


-- reverse characters
SELECT 
	reverse(trim(sql_word)) as reversed_word
FROM staging.sql_glossary

-- find the position of the first occurence of a substring
-- return zero if the substring is not found

SELECT 
	description,
	instr(description, 'select') as select_position,
    select_position != 0 as about_select
FROM staging.sql_glossary;
    
-- concatenation
SELECT 'fun' || ' joke'
