{{ config(materailized='table') }}

with cte as 
(
    select concat(STUDENT_FIRST_NAME,' ',STUDENT_LAST_NAME,' ',STUDENT_MIDDLENAME) as FULL_NAME,
    AGE,
    GENDER,
    SALARY,
    HOME_LOCATION
    ,WORK_LOCATION
    from {{source('rishi_kesh','alts')}}
)

select * from cte 