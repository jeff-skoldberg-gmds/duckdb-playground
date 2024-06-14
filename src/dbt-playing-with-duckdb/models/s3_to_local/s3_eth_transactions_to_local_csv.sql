{{ config(materialized='external', location='models/s3_to_local/eth.csv') }}

select * from {{ source('eth_s3', 'eth_transactions') }}
limit 100