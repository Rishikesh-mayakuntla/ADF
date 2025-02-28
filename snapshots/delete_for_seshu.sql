{% snapshot delete_for_seshu %}

{{
    config(
        strategy='check',
        unique_key='student_id',
        check_cols=['student_id','student_first_name','gender','salary'],
        invalidate_hard_deletes=True
    )
}}

select * from {{source('rishi_kesh','alts')}}

{% endsnapshot %}