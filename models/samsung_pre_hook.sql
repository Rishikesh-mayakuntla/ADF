{{ config(materialized='table',
         pre_hook="truncate table {{ this }}",
        
         ) }}

     with rishi as (
        select * from {{source('rishi_kesh','samsung')}}
     )

select * from rishi 