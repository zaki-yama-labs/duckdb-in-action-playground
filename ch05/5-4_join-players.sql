SELECT * EXCLUDE (
    player,
    wikidata_id,
    name_first,
    name_last,
    player_id,
    hand,
    ioc
  )
  REPLACE (
    cast(strptime(ranking_date::VARCHAR, '%Y%m%d') AS DATE) AS ranking_date,
    cast(strptime(dob, '%Y%m%d') AS DATE) AS dob
  ),
  name_first || ' ' || name_last AS name
FROM 'atp/atp_rankings_*.csv' rankings
JOIN (FROM 'atp/atp_players.csv') players
  ON players.player_id = rankings.player
ORDER BY ranking_date DESC
LIMIT 5;
