{% macro safe_cast_timestamp(column_name) %}
  try_cast({{ column_name }} as timestamp)
{% endmacro %}