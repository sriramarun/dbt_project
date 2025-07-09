with exchange_rates as (
  select * from {{ ref('currency_exchange_rates') }}
)
select
  p.customer_id,
  date_trunc('month', p.payment_time) as revenue_month,
  sum(p.amount_usd * e.exchange_rate_to_usd) as mrr_usd,
  c.lifecycle_stage
from {{ ref('stg_stripe_payments') }} p
left join {{ ref('dim_customer') }} c
  on p.customer_id = c.customer_id
left join exchange_rates e
  on p.currency = e.currency
group by 1, 2, 4