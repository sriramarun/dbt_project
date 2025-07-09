{% snapshot scd_customer_status %}
{{
  config(
    target_schema='snapshots',
    unique_key='contact_id',
    strategy='check',
    check_cols=['lifecycle_stage'],
    invalidate_hard_deletes=True
  )
}}
select
  contact_id,
  email,
  lifecycle_stage,
  signup_date,
  current_timestamp as snapshot_loaded_at
from {{ ref('stg_hubspot_contacts') }}
{% endsnapshot %}