select
  id as payment_id,
  customer_id,
  amount / 100.0 as amount_usd,
  currency,
  created_at::timestamp as payment_time,
  status
from {{ source('stripe', 'stripe_payments') }}
where status = 'paid'