{{ config(materialized='table',transient=false) }}

with rishi as (
    select * from {{source('rishi_kesh','Fresh_customers')}}
)
select * from rishi 