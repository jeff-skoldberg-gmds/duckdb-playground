{{ config(materialized='external', location='src/dbt-playing-with-duckdb/models/gmdata_s3/myfile.csv') }}

select count(*) total_row_count
from 
{{ ref('all_mrp_data') }}