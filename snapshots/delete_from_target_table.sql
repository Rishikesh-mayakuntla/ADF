{% snapshot delete_target_table %}

{{ 
         config(
      strategy='timestamp',
      unique_key='student_id',
      updated_at='updated_at',
      invalidate_hard_deletes=true
        )
}}

select * from {{source('rishi_kesh','alts')}}

{% endsnapshot %}