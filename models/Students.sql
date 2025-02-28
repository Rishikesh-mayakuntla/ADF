{{ config(materialized='table') }}

with rishi as (
    select course,sum(feepaid) from {{source('rishi_kesh','students')}} group by course 
)

select * from rishi 