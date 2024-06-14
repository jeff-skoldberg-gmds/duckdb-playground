{{ config(materialized='external', location='models/public_data/eth.csv') }}

select * from {{ source('eth_s3', 'eth_transactions') }}
limit 100