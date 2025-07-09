select
  contact_id,
  email,
  lifecycle_stage,
  created_at::date as signup_date
from {{ source('hubspot', 'hubspot_contacts') }}