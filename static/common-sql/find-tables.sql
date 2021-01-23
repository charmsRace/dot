/**
 * Dialect: PostgreSQL
 * Finds all tables matching the given search term.
 */

WITH input AS (SELECT
    'name' AS search_term
)

SELECT
    t.table_schema,
    t.table_name
FROM
        information_schema.tables AS t
WHERE
        t.table_name ~ (SELECT search_term FROM input)
    AND
        t.table_schema NOT IN (
            'information_schema',
            'pg_catalog'
        )
    AND
        t.table_type = 'BASE TABLE'
ORDER BY
    t.table_schema ASC,
    t.table_name ASC
;
