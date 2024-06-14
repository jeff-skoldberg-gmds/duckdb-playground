{{ config(materialized='external', location='models/csv_to_parquet_etc/data_output.csv') }}

select * from {{ source('local_parquets', 'data') }}
