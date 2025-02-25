{{ config(materialized='table') }}

with rishi as (
    select * from {{ref('Customers')}}
)

select * from rishi 