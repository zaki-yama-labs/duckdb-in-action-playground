-- duckdb -s "SET memory_limit='100MB';
COPY (
  SELECT * EXCLUDE (player, wikidata_id)
           REPLACE (
             cast(strptime(ranking_date::VARCHAR, '%Y%m%d') AS DATE)
               AS ranking_date,
             cast(strptime(dob, '%Y%m%d') AS DATE) AS dob
           )
  FROM 'atp/atp_rankings_*.csv' rankings
  JOIN (
    FROM 'atp/atp_players.csv'
  ) players ON players.player_id = rankings.player
)
TO 'atp_rankings.parquet'
(FORMAT PARQUET, CODEC 'SNAPPY', ROW_GROUP_SIZE 100000);
-- "
