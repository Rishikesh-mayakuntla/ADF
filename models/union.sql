{{ config(materialized='table') }}

with cte as (
    select customername,location,gender from {{source('rishi_kesh','Fresh_customers')}}
    union 
    select customername,location,gender from {{source('rishi_kesh','customers')}}
)


select * from cte 