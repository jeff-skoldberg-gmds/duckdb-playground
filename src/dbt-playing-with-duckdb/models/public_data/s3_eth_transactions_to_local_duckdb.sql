

{{ config(materialized='table') }}

select * from {{ source('eth_s3', 'eth_transactions') }}
