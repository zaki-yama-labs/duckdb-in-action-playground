.mode line
FROM parquet_metadata('atp/atp_rankings.parquet')
LIMIT 1;
--               file_name = atp/atp_rankings.parquet
--            row_group_id = 0
--      row_group_num_rows = 100352
--   row_group_num_columns = 11
--         row_group_bytes = 13340912
--               column_id = 0
--             file_offset = 0
--              num_values = 100352
--          path_in_schema = ranking_date
--                    type = INT32
--               stats_min = 2004-02-02
--               stats_max = 2005-02-28
--        stats_null_count = 0
--    stats_distinct_count =
--         stats_min_value = 2004-02-02
--         stats_max_value = 2005-02-28
--             compression = SNAPPY
--               encodings = PLAIN
--       index_page_offset =
--  dictionary_page_offset =
--        data_page_offset = 4
--   total_compressed_size = 19183
-- total_uncompressed_size = 401439
--      key_value_metadata = {}

