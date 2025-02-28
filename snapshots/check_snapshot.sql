{% snapshot check_snapshot %}

{{
    config(
        strategy='check',
        unique_key='student_id',
        check_cols=['student_id','student_first_name','gender','salary'],
    )
}}

select * from {{source('rishi_kesh','alts')}}

{% endsnapshot %}