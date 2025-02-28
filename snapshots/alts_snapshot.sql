{% snapshot alts_snapshot %}

{{
    config(
      strategy='timestamp',
      unique_key='student_id',
      updated_at='updated_at',
      
    )
}}


select * from {{source('rishi_kesh','alts')}}

{% endsnapshot %}





