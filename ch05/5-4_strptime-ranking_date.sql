SELECT * REPLACE (
  cast(strptime(ranking_date::VARCHAR, '%Y%m%d') AS DATE)
    AS ranking_date
)
FROM 'atp/atp_rankings_*.csv'
LIMIT 5;
