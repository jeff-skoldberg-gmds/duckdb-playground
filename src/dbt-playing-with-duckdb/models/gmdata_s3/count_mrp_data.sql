{{ config(materialized='external', location='models/gmdata_s3/myfile.csv') }}

select count(*) total_row_count
from 
{{ ref('all_mrp_data') }}