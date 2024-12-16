DESCRIBE FROM 'atp/atp_rankings.parquet';
-- ┌──────────────┬─────────────┬─────────┬─────────┬─────────┬─────────┐
-- │ column_name  │ column_type │  null   │   key   │ default │  extra  │
-- │   varchar    │   varchar   │ varchar │ varchar │ varchar │ varchar │
-- ├──────────────┼─────────────┼─────────┼─────────┼─────────┼─────────┤
-- │ ranking_date │ DATE        │ YES     │         │         │         │
-- │ rank         │ BIGINT      │ YES     │         │         │         │
-- │ points       │ BIGINT      │ YES     │         │         │         │
-- │ player_id    │ BIGINT      │ YES     │         │         │         │
-- │ name_first   │ VARCHAR     │ YES     │         │         │         │
-- │ name_last    │ VARCHAR     │ YES     │         │         │         │
-- │ hand         │ VARCHAR     │ YES     │         │         │         │
-- │ dob          │ DATE        │ YES     │         │         │         │
-- │ ioc          │ VARCHAR     │ YES     │         │         │         │
-- │ height       │ BIGINT      │ YES     │         │         │         │
-- │ name         │ VARCHAR     │ YES     │         │         │         │
-- ├──────────────┴─────────────┴─────────┴─────────┴─────────┴─────────┤
-- │ 11 rows                                                  6 columns │
-- └────────────────────────────────────────────────────────────────────┘