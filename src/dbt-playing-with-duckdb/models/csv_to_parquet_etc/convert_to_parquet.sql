{{ config(materialized='external', location='models/csv_to_parquet_etc/data_output.parquet') }}

select * from {{ source('local_csvs', 'data') }}
