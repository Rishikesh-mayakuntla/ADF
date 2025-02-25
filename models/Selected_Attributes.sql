{{ config(materialized='view') }}

with cte as (
    select CUSTOMERNAME,LOCATION,GENDER from {{source('rishi_kesh','customers')}}
)

select * from cte 