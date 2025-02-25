{{ config(materialized='table') }}

with cte as (
    select name,course,feepaid,
    case 
    when feepaid > 500 then 'high'
     when feepaid < 100 then 'low'
    else 'medium'
    end as free_cateogory from {{source('rishi_kesh','samsung')}}
)

select * from cte 