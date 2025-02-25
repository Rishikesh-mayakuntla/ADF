{{ config(materialized='table') }}

with rishi as (
    select * from {{ source('rishi_kesh','Fresh_customers') }} c 
    
)

select * from rishi 