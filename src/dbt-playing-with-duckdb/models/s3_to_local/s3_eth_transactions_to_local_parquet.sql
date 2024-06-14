

{{ config(materialized='external', location='models/s3_to_local/eth.parquet') }}

select * from {{ source('eth_s3', 'eth_transactions') }}
