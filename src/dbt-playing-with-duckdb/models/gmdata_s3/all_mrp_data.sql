{{ config(materialized='external', location='s3://gmds-sample-data/mrp_csv_data/combined.parquet') }}

select * from {{ source('external_source', 'mrp_data') }}
