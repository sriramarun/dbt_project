{% macro convert_currency(amount_column, currency_column, exchange_rate_table='currency_exchange_rates') %}
  {{ amount_column }} * (
    select exchange_rate_to_usd
    from {{ ref(exchange_rate_table) }}
    where currency = {{ currency_column }}
    limit 1
  )
{% endmacro %}