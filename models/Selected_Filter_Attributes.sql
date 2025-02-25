{{ config(materialized='table') }}

with rishi as (
    select * from {{ref('Selected_Attributes')}}
)

select * from rishi 