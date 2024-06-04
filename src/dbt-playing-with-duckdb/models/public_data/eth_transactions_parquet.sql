{{ config(materialized='external', location='models/public_data/eth.parquet') }}

select * from {{ source('eth_s3', 'eth_transactions') }}
