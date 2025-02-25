{{ config(materialized='table') }}

with rishi as (
    select c.customername,
    c.location,
    f.gender from {{ source('rishi_kesh','Fresh_customers') }} F
    join customers C on F.CUSTOMERID = C.CUSTOMERID 
)  

select * from rishi 