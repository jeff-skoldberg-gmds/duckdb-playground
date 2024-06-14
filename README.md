# duckdb-playground

## Welcome!
### Launch This Project in Github Codespaces
- In your browser / github, click the green "Code" button
  - Click the tab for Codespace, launch a new one
  - On the first build, it will take a few minutes.
  - Wait until the dbt Power User extension is loaded... then you should be good to go.

### Some quick things to try...  
**Try these commands and check what happened after each one:**
- `dbt build -s convert_to_csv`
- `dbt build -s convert_to_parquet`
- `dbt build -s s3_eth_transactions_to_local_csv`
- `dbt build -s s3_eth_transactions_to_local_parquet`
- `dbt build -s s3_eth_transactions_to_local_duckdb`


## Jeff to do
- get something with aws sso to work.
- file patern on the blockchain data.
- get power user 