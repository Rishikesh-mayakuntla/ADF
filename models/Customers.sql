{{ config(materialized='table') }}
with cte as (
    select * from {{source('rishi_kesh','customers')}}
)

select * from cte 