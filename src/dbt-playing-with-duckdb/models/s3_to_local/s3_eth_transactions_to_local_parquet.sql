{#
to write the model to S3 instead, just use:
{{ config(materialized='external', location='s3://your/bucket/path/combined.parquet') }}
and update profiles.yml to include it.
#}

{{ config(materialized='external', location='src/dbt-playing-with-duckdb/models/public_data/eth.parquet') }}

select * from {{ source('eth_s3', 'eth_transactions') }}
