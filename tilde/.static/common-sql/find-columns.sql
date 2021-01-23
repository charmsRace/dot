/**
 * Dialect: PostgreSQL
 * Finds all columns matching the given search term.
 */

WITH input AS (SELECT
    'name' AS search_term
)

SELECT
    t.table_schema,
    t.table_name,
    c.column_name,
    c.data_type
FROM
        information_schema.tables AS t
    INNER JOIN
        information_schema.columns AS c
    ON
            t.table_schema = c.table_schema
        AND
            t.table_name = c.table_name
WHERE
        c.column_name ~ (SELECT search_term FROM input)
    AND
        t.table_schema NOT IN (
            'information_schema',
            'pg_catalog'
        )
    AND
        t.table_type = 'BASE TABLE'
ORDER BY
    t.table_schema ASC,
    t.table_name ASC,
    c.column_name ASC
;
