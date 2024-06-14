{{ config(materialized='external', location='models/csv_to_parquet/data.parquet') }}

select * from {{ source('local_csvs', 'data') }}
limit 100