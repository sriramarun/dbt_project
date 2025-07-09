select
  contact_id as customer_id,
  email,
  signup_date,
  lifecycle_stage
from {{ ref('stg_hubspot_contacts') }}