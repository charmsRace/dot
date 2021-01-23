SELECT '[' || STRING_AGG(
	json_column::TEXT,
	','
) || ']' AS json_array
FROM my_table
;
