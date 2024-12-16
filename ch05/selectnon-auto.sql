FROM read_csv(
  'flights.csv',
  auto_detect=true,
  columns={
    'FlightDate': 'DATE',
    'UniqueCarrier': 'VARCHAR',
    'OriginCityName': 'VARCHAR',
    'DestCityName': 'VARCHAR'
  }
);
