{{ config(materialized='table') }}

with rishi as (
    select name,course,feepaid,gst,
    ({{samsung('feepaid','gst')}}) as total_salary
    from {{source('rishi_kesh','samsung')}}
)
select * from rishi 