{{ config(materialized='table') }}

with friday as (
    select * from {{ref("delete_for_seshu")}}
)

select student_id,student_first_name,student_last_name,age,gender,salary 
from friday where DBT_VALID_TO is not null 