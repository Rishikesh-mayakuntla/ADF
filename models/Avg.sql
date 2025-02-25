{{ config(materialized='table') }}

with rishi as (
    select course,avg(feepaid) from {{source('rishi_kesh','students')}} group by course order by course 
)

select * from rishi 