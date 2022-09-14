{{ config(materialized='table') }}

with source_data as (

  select transaction_set_id, store_id from default.data_feed_pepsico_v3_transaction_sets_v2 where cast(date_time as timestamp) between 
  cast('2021-12-01 00:00:00.000' as timestamp) and cast('2021-12-01 05:00:00.000'as timestamp)

)

select *
from source_data

