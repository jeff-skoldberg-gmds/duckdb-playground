

{{ config(materialized='external', location='/workspaces/duckdb-playground/src/dbt-playing-with-duckdb/models/public_data/eth33.parquet') }}

select * from {{ source('eth_s3', 'eth_transactions') }}
