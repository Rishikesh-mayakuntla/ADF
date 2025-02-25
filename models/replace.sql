{{ config(materailized='table') }}

with rishi as (
    select STUDENT_FIRST_NAME,
    STUDENT_LAST_NAME,
    STUDENT_MIDDLENAME,
    replace(STUDENT_MIDDLENAME,'SESHU','THEBHUSS') from {{source('rishi_kesh','alts')}}

)

select * from rishi 