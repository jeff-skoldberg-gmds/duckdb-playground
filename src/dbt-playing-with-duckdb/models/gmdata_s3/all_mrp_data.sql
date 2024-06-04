{{ config(materialized='external', location='s3://gmds-sample-data/mrp_csv_data/combined.parquet') }}

select * from {{ source('gmdata_s3', 'mrp_data') }}
