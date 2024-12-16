SELECT distinct function_name,
       unnest(parameters) as parameter
FROM duckdb_functions()
WHERE function_name = 'read_csv'
ORDER BY parameter;
