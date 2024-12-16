SELECT filename, count(*)
FROM read_csv_auto(
  'atp/atp_rankings_*.csv',
  filename=true
)
GROUP BY ALL
ORDER BY ALL;
