/**
 * Dialect: PostgreSQL
 * Describes all columns of the given table.
 */

WITH input AS (SELECT
    'name' AS target_table
)

SELECT
    column_name,
    data_type,
    character_maximum_length,
    column_default,
    is_nullable
FROM information_schema.columns
WHERE table_name = (SELECT target_table FROM input)
ORDER BY ordinal_position
;
