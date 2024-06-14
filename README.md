# duckdb-playground

## Welcome!
### Launch This Project in Github Codespaces
- In your browser / github, click the green "Code" button
  - Click the tab for Codespace, launch a new one
  - On the first build, it will take a few minutes.
  - Wait until the dbt Power User extension is loaded... then you should be good to go.
  - if your .sql files do not show with a dbt logo after some time, refresh your browser and it shoudl work.
  - Preview any model by clicking the "play" icon in the top right.
  - Run and Build using the extesion are not working yet, will fix that later today.

### Some quick things to try...  
**Try these commands in the terminal and check what happened in src/dbt-playing-with-duckdb/models/folder after each command:**
- `dbt build -s convert_to_csv`
- `dbt build -s convert_to_parquet`
- `dbt build -s s3_eth_transactions_to_local_csv`
- `dbt build -s s3_eth_transactions_to_local_parquet`
- `dbt build -s s3_eth_transactions_to_local_duckdb`


## Jeff to do
- get something with aws sso to work.
- file patern on the blockchain data.
- get power user 