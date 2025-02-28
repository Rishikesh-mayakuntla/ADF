{{ config(materialized='table') }}

with rishi as (
    select * from {{source('rishi_kesh','samsung')}}
)

select * from rishi 