import duckdb

# --- DuckDB's relational API ---
# Defines an object but does not execute a query yet
result = duckdb.sql("SELECT 42")
# Executes the query and prints the result
result.show()


# --- Python DB-API 2.0 ---
# Executes the query and returns a connection object
result = duckdb.execute("SELECT 42")
# Fetches one row from the connection
row = result.fetchone()
# Prints that row
print(row)
