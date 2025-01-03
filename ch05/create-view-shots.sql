CREATE VIEW shots AS
FROM (
  FROM 'xg/shots_*.json'
  SELECT unnest(h) AS row
  UNION ALL
  FROM 'xg/shots_*.json'
  SELECT unnest(a) AS row
);

.mode line
DESCRIBE shots;
